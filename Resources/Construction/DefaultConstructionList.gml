<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<!--Erzeugt mit KIT (www.kit.edu) GML-Toolbox, Erstellungsdatum: 11/18/16-->
<CityModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/citygml/2.0 ..\XSD/EnergyADE_0_7_0_local.xsd" xmlns="http://www.opengis.net/citygml/2.0" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:gml="http://www.opengis.net/gml" xmlns:energy="http://www.sig3d.org/citygml/2.0/energy/0.7.0">
  <gml:featureMember>
    <energy:SolidMaterial gml:id="Standard-Beton">
      <gml:description>Beton mit hoher Rohdichte (DIN 12524 - 2400 kg/m³)</gml:description>
      <energy:conductivity uom="wm-1k-1">2.1</energy:conductivity>
      <energy:density uom="kgm-3">2400</energy:density>
      <energy:specificHeat uom="kjkg-1k-1">1</energy:specificHeat>
    </energy:SolidMaterial>
  </gml:featureMember>
 
 <gml:featureMember>
 <energy:SolidMaterial gml:id="Standard-Mauerwerk">
  <gml:description>Mauerwerk</gml:description>
  <energy:conductivity uom="wm-1k-1">0.8</energy:conductivity>
  <energy:density uom="kgm-3">1200</energy:density>
  <energy:specificHeat uom="kjkg-1k-1">1</energy:specificHeat>
 </energy:SolidMaterial>
 </gml:featureMember>
 
 
 <gml:featureMember>
  <energy:SolidMaterial gml:id="Standard-Dännstoff">
   <gml:description>Styropor</gml:description>
   <energy:conductivity uom="wm-1k-1">0.03</energy:conductivity>
   <energy:density uom="kgm-3">30</energy:density>
   <energy:specificHeat uom="kjkg-1k-1">1.5</energy:specificHeat>
  </energy:SolidMaterial>
 </gml:featureMember>
 
 
 <gml:featureMember>
  <energy:SolidMaterial gml:id="Standard-Holz">
   <gml:description>Holz</gml:description>
   <energy:conductivity uom="wm-1k-1">0.15</energy:conductivity>
   <energy:density uom="kgm-3">600</energy:density>
   <energy:specificHeat uom="kjkg-1k-1">2</energy:specificHeat>
  </energy:SolidMaterial>
 </gml:featureMember>
 
 
  
 
 
  <gml:featureMember>
    <energy:Construction gml:id="Aussenwand-Hlz24-WDVS-8-034">
      <gml:description>Außenwand mit Wärmedämmverbundsystem; Hochlochziegel-Dicke: 24 cm; Dämmdicke: 8 cm; Lambdawert : 0.035 W/mK</gml:description>
      <energy:uValue uom="wm-2k-1">0.34</energy:uValue>
      <energy:layer>
        <energy:Layer>
          <energy:layerComponent>
            <energy:LayerComponent>
              <energy:areaFraction uom="scale">1</energy:areaFraction>
              <energy:thickness uom="m">0.01</energy:thickness>
              <energy:material xlink:href="#Kunstharzputz" />
            </energy:LayerComponent>
          </energy:layerComponent>
        </energy:Layer>
      </energy:layer>
      <energy:layer>
        <energy:Layer>
          <energy:layerComponent>
            <energy:LayerComponent>
              <energy:areaFraction uom="scale">1</energy:areaFraction>
              <energy:thickness uom="m">0.1</energy:thickness>
              <energy:material xlink:href="#MineralischeDaemmstoffe-DIN18165" />
            </energy:LayerComponent>
          </energy:layerComponent>
        </energy:Layer>
      </energy:layer>
      <energy:layer>
        <energy:Layer>
          <energy:layerComponent>
            <energy:LayerComponent>
              <energy:areaFraction uom="scale">1</energy:areaFraction>
              <energy:thickness uom="m">0.24</energy:thickness>
              <energy:material xlink:href="#Hüttenstein-Mauerwerk-1400" />
            </energy:LayerComponent>
          </energy:layerComponent>
        </energy:Layer>
      </energy:layer>
      <energy:layer>
        <energy:Layer>
          <energy:layerComponent>
            <energy:LayerComponent>
              <energy:areaFraction uom="scale">1</energy:areaFraction>
              <energy:thickness uom="m">0.015</energy:thickness>
              <energy:material xlink:href="#Putzmörtel-1" />
            </energy:LayerComponent>
          </energy:layerComponent>
        </energy:Layer>
      </energy:layer>
    </energy:Construction>
  </gml:featureMember>
  <gml:featureMember>
    <energy:Construction gml:id="Aussenwand-gut">
      <gml:description>Außenwand mit guten Wärmedämmungseigenschaften</gml:description>
      <energy:uValue uom="wm-2k-1">0.5</energy:uValue>
      <energy:layer>
        <energy:Layer>
          <energy:layerComponent>
            <energy:LayerComponent>
              <energy:areaFraction uom="scale">1</energy:areaFraction>
              <energy:thickness uom="m">0.3</energy:thickness>
              <energy:material xlink:href="#Wandmaterial-Gut" />
            </energy:LayerComponent>
          </energy:layerComponent>
        </energy:Layer>
      </energy:layer>
    </energy:Construction>
  </gml:featureMember>
  <gml:featureMember>
    <energy:Construction gml:id="Bodenplatte-gut">
      <gml:description>Bodenplatte mit guten Wärmedämmungseigenschaften</gml:description>
      <energy:uValue uom="wm-2k-1">0.4</energy:uValue>
      <energy:layer>
        <energy:Layer>
          <energy:layerComponent>
            <energy:LayerComponent>
              <energy:areaFraction uom="scale">1</energy:areaFraction>
              <energy:thickness uom="m">0.7</energy:thickness>
              <energy:material xlink:href="#Bodenplattenmaterial-Gut" />
            </energy:LayerComponent>
          </energy:layerComponent>
        </energy:Layer>
      </energy:layer>
    </energy:Construction>
  </gml:featureMember>
  <gml:featureMember>
    <energy:Construction gml:id="Dach-gut">
      <gml:description>Dach mit guten Wärmedämmungseigenschaften</gml:description>
      <energy:uValue uom="wm-2k-1">0.5</energy:uValue>
      <energy:layer>
        <energy:Layer>
          <energy:layerComponent>
            <energy:LayerComponent>
              <energy:areaFraction uom="scale">1</energy:areaFraction>
              <energy:thickness uom="m">0.3</energy:thickness>
              <energy:material xlink:href="#Dachmaterial-Gut" />
            </energy:LayerComponent>
          </energy:layerComponent>
        </energy:Layer>
      </energy:layer>
    </energy:Construction>
  </gml:featureMember>
  <gml:featureMember>
    <energy:Construction gml:id="Fenster-gut">
      <gml:description>Fenster mit guten Wärmedämmungseigenschaften</gml:description>
      <energy:uValue uom="wm-2k-1">1.8</energy:uValue>
      <energy:opticalProperties>
        <energy:OpticalProperties>
          <energy:transmittance>
            <energy:Transmittance>
              <energy:fraction uom="scale">0.6</energy:fraction>
              <energy:wavelengthRange>Total</energy:wavelengthRange>
            </energy:Transmittance>
          </energy:transmittance>
          <energy:glazingRatio uom="scale">0.7</energy:glazingRatio>
        </energy:OpticalProperties>
      </energy:opticalProperties>
    </energy:Construction>
  </gml:featureMember>
  <gml:featureMember>
    <energy:Construction gml:id="Kellerfußboden-8-034">
      <gml:description>Kellerfußboden, Dämmdicke: 8 cm; Lambdawert: 0,03 W/mK</gml:description>
      <energy:uValue uom="wm-2k-1">0.34</energy:uValue>
      <energy:layer>
        <energy:Layer>
          <energy:layerComponent>
            <energy:LayerComponent>
              <energy:areaFraction uom="scale">1</energy:areaFraction>
              <energy:thickness uom="m">0.1</energy:thickness>
              <energy:material xlink:href="#Beton-DIN-12524-2400" />
            </energy:LayerComponent>
          </energy:layerComponent>
        </energy:Layer>
      </energy:layer>
      <energy:layer>
        <energy:Layer>
          <energy:layerComponent>
            <energy:LayerComponent>
              <energy:areaFraction uom="scale">1</energy:areaFraction>
              <energy:thickness uom="m">0.0005</energy:thickness>
              <energy:material xlink:href="#Bitumendachbahn-DIN-52128" />
            </energy:LayerComponent>
          </energy:layerComponent>
        </energy:Layer>
      </energy:layer>
      <energy:layer>
        <energy:Layer>
          <energy:layerComponent>
            <energy:LayerComponent>
              <energy:areaFraction uom="scale">1</energy:areaFraction>
              <energy:thickness uom="m">0.08</energy:thickness>
              <energy:material xlink:href="#Polystyrol-Extruderschaum-WLG-030" />
            </energy:LayerComponent>
          </energy:layerComponent>
        </energy:Layer>
      </energy:layer>
      <energy:layer>
        <energy:Layer>
          <energy:layerComponent>
            <energy:LayerComponent>
              <energy:areaFraction uom="scale">1</energy:areaFraction>
              <energy:thickness uom="m">0.0002</energy:thickness>
              <energy:material xlink:href="#Polyethylenfolie-DIN-12524-015" />
            </energy:LayerComponent>
          </energy:layerComponent>
        </energy:Layer>
      </energy:layer>
      <energy:layer>
        <energy:Layer>
          <energy:layerComponent>
            <energy:LayerComponent>
              <energy:areaFraction uom="scale">1</energy:areaFraction>
              <energy:thickness uom="m">0.035</energy:thickness>
              <energy:material xlink:href="#Zement-Estrich" />
            </energy:LayerComponent>
          </energy:layerComponent>
        </energy:Layer>
      </energy:layer>
    </energy:Construction>
  </gml:featureMember>
  <gml:featureMember>
    <energy:Construction gml:id="Sparrendach-geneigt-025">
      <gml:description>Sparrendach geneigt, hinterlüftet, 0,25 </gml:description>
      <energy:uValue uom="wm-2k-1">0.25</energy:uValue>
      <energy:layer>
        <energy:Layer>
          <energy:layerComponent>
            <energy:LayerComponent>
              <energy:areaFraction uom="scale">1</energy:areaFraction>
              <energy:thickness uom="m">0.02</energy:thickness>
              <energy:material xlink:href="#Dachziegelstein-Ton-DIN-12524" />
            </energy:LayerComponent>
          </energy:layerComponent>
        </energy:Layer>
      </energy:layer>
      <energy:layer>
        <energy:Layer>
          <energy:layerComponent>
            <energy:LayerComponent>
              <energy:areaFraction uom="scale">1</energy:areaFraction>
              <energy:thickness uom="m">0.04</energy:thickness>
              <energy:material xlink:href="#Konstruktionsholz-DIN-12524-500" />
            </energy:LayerComponent>
          </energy:layerComponent>
        </energy:Layer>
      </energy:layer>
      <energy:layer>
        <energy:Layer>
          <energy:layerComponent>
            <energy:LayerComponent>
              <energy:areaFraction uom="scale">1</energy:areaFraction>
              <energy:thickness uom="m">0.04</energy:thickness>
              <energy:material xlink:href="#Luftschicht-belüftet-kl300" />
            </energy:LayerComponent>
          </energy:layerComponent>
        </energy:Layer>
      </energy:layer>
      <energy:layer>
        <energy:Layer>
          <energy:layerComponent>
            <energy:LayerComponent>
              <energy:areaFraction uom="scale">0.091</energy:areaFraction>
              <energy:thickness uom="m">0.18</energy:thickness>
              <energy:material xlink:href="#Konstruktionsholz-DIN-12524-500" />
            </energy:LayerComponent>
          </energy:layerComponent>
          <energy:layerComponent>
            <energy:LayerComponent>
              <energy:areaFraction uom="scale">0.909</energy:areaFraction>
              <energy:thickness uom="m">0.18</energy:thickness>
              <energy:material xlink:href="#Polystyrol-Partikelschaum-WLG-040-20" />
            </energy:LayerComponent>
          </energy:layerComponent>
        </energy:Layer>
      </energy:layer>
      <energy:layer>
        <energy:Layer>
          <energy:layerComponent>
            <energy:LayerComponent>
              <energy:areaFraction uom="scale">1</energy:areaFraction>
              <energy:thickness uom="m">0.0005</energy:thickness>
              <energy:material xlink:href="#Polyethylenfolie-DIN-12524-015" />
            </energy:LayerComponent>
          </energy:layerComponent>
        </energy:Layer>
      </energy:layer>
      <energy:layer>
        <energy:Layer>
          <energy:layerComponent>
            <energy:LayerComponent>
              <energy:areaFraction uom="scale">1</energy:areaFraction>
              <energy:thickness uom="m">0.025</energy:thickness>
              <energy:material xlink:href="#Gipskartonplatte-DIN-18180" />
            </energy:LayerComponent>
          </energy:layerComponent>
        </energy:Layer>
      </energy:layer>
    </energy:Construction>
  </gml:featureMember>
  <gml:featureMember>
    <energy:Construction gml:id="_2-Scheiben-Wärmeschutzverglasung-1">
      <gml:description>2-Scheiben Wärmeschutzverglasung 2/1,9/2,2</gml:description>
      <energy:uValue uom="wm-2k-1">2.1</energy:uValue>
      <energy:opticalProperties>
        <energy:OpticalProperties>
          <energy:transmittance>
            <energy:Transmittance>
              <energy:fraction uom="scale">0.65</energy:fraction>
              <energy:wavelengthRange>Total</energy:wavelengthRange>
            </energy:Transmittance>
          </energy:transmittance>
          <energy:glazingRatio uom="scale">0.7</energy:glazingRatio>
        </energy:OpticalProperties>
      </energy:opticalProperties>
    </energy:Construction>
  </gml:featureMember>
</CityModel>