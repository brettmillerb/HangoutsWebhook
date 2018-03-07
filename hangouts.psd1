@{
    cards = @(
        @{
            header = @{
                title       = "Pizza Bot Customer Support"
                subtitle    = "pizzabot@example.com"
                imageUrl    = "https://goo.gl/aeDtrS"
            }
            sections = @(
                @{
                    widgets = @(
                        @{
                            KeyValue = @{
                                topLabel    = "Order No."
                                content     = "12345"
                            }
                        }
                        @{
                            KeyValue = @{
                                topLabel    = "Status"
                                content     = "In Delivery"
                            }
                        }
                    )
                }
                @{
                    header  = "Location"
                    widgets = @(
                        @{
                            image = @{
                                imageUrl = "https://maps.googleapis.com/..."
                            }
                        }
                    )
                }
                @{
                    widgets = @(
                        @{
                            buttons = @(
                                @{
                                    textbutton = @{
                                        text    = "Open Order"
                                        onClick = @{
                                            openLink = @{
                                                url = "https://..."
                                            }
                                        }
                                    }
                                }
                            )
                        }
                    )
                }
            )
        }
    )
}