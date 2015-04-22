def contact_attributes(overrides={})
  {
      name: 'Example Contact',
      email: 'user@example.com',
      phone: '555-555-1212',
      message: 'Example message for my example topic.'
  }.merge(overrides)
end