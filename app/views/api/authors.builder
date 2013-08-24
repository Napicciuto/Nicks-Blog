xml.instruct!
xml.response do
  @author.each do |author|
    xml.author(id: author.id) do
      xml.first_name { xml.cdata! author.first_name rescue "n/a"  }
      xml.last_name { xml.cdata! author.last_name rescue "n/a"  }
      xml.address { xml.cdata! author.address rescue "n/a" }
      xml.city { xml.cdata! author.city rescue "n/a"  }
      xml.state { xml.cdata! author.state rescue "n/a"  }
      xml.zip { xml.cdata! author.zip rescue "n/a"  }
      xml.about_me { xml.cdata! author.about_me rescue "n/a"  }
      xml.company { xml.cdata! author.company rescue "n/a"  }     
    end
  end
end


