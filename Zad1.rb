class CharDiff
  #konstruktor
  def initialize (str1,str2)  
    @wyraz1=str1
    @wyraz2=str2
    
  end

     
  
  def count
    roznica=0
    #sprawdzam czy argumenty sa Stringami 
    if( !@wyraz1.instance_of?(String) ||  !@wyraz2.instance_of?(String))
      return "Rozne typy"
    end
    #zamieniam na tablice
     @wyraz1.split("")
     @wyraz2.split("")
    
    i=0
    j=0
    dlugosc1=0
    dlugosc2=0
    stan=0
    #usuwam spacje ktore wystepuja przed i za pierwszym ciagiem znaków , kolejne po spacji nie uwzgledniam
    while i < @wyraz1.length do
      if(@wyraz1[i] !=" " )
        @wyraz1[j]=@wyraz1[i]
        dlugosc1+=1
        j+=1
        stan=1
      end
      if(@wyraz1[i] ==" "and stan==2)
        break
      end
       
      i+=1
    end
    
      i=0
    j=0
    stan=0
    
    # to samo co wczesniej ale dla drugiego argumentu
    while i < @wyraz2.length do
      if(@wyraz2[i] !=" " )
        @wyraz2[j]=@wyraz2[i]
        dlugosc2+=1
        j+=1
        stan=1
      end
      if(@wyraz2[i] ==" "and stan==1 )
        break
      end
      
      i+=1
    end
    
    
    #porownuje długosci
    if(dlugosc1!=dlugosc2 )
      return "Rozna dlugosc"
    end
     n=0
    #porównuje znaki na tej samej pozycji 
    while n<dlugosc1 do
      if(@wyraz1[n]!=@wyraz2[n])
        roznica+=1
      end
     n+=1
    end
    roznica
  end
end
