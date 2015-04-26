# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  slideshow.initialize()
  services.initialize()

  $('.flexslider').flexslider
    directionNav: false
    slideshowSpeed: 4000

  $('[data-toggle="tooltip"]').tooltip()

# slideshow code
slideshow = initialize: ->
  $slideshow = $('.slideshow')
  $slides = $slideshow.find('.slide')
  $btnPrev = $slideshow.find('.btn-nav.prev')
  $btnNext = $slideshow.find('.btn-nav.next')
  index = 0
  interval = setInterval((->
    index++
    if index >= $slides.length
      index = 0
    updateSlides index
  ), 4500)

  updateSlides = (index) ->
    $slides.removeClass 'active'
    $slides.eq(index).addClass 'active'

  $btnPrev.click ->
    clearInterval interval
    interval = null
    index--
    if index < 0
      index = $slides.length - 1
    updateSlides index

  $btnNext.click ->
    clearInterval interval
    interval = null
    index++
    if index >= $slides.length
      index = 0
    updateSlides index

  $slideshow.hover (->
    $btnPrev.addClass 'active'
    $btnNext.addClass 'active'

  ), ->
    $btnPrev.removeClass 'active'
    $btnNext.removeClass 'active'

# code for services page:
services =
  tabs: ->
    $tabs = $('#services #tabs')
    $hexagons = $tabs.find('.hexagon')
    $sections = $tabs.find('.section')

    $hexagons.click ->
      $hexagons.removeClass 'active'
      $(this).addClass 'active'
      index = $hexagons.index(this)
      $sections.fadeOut()
      $sections.eq(index).fadeIn()

  screenHover: ->
    $screens = $('#features-hover .images img')
    $features = $('#features-hover .features .feature')
    $features.mouseenter ->
      if (!$(this).hasClass('active'))
        $features.removeClass('active')
        $(this).addClass('active')
        index = $features.index(this)
        $screens.stop().fadeOut()
        $screens.eq(index).fadeIn()

  initialize: ->
    @tabs()
    @screenHover()

