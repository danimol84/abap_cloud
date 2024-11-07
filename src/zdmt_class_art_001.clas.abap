CLASS zdmt_class_art_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zdmt_class_art_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA: it_art TYPE STANDARD TABLE OF zdmt_tab_art.

        it_art = VALUE #(
          ( client = sy-mandt id_art = 1 descr = 'Mini colores' desc2 = 'Un mini estuche, con mini colores'
          color = 'varios' piezas = 12 stock = 10
          url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-7-in-1-natural-03_600x.jpg?v=1617153233' )

          ( client = sy-mandt id_art = 2 descr = 'Monthly Planner' desc2 = 'Organizador Atemporal'
          color = 'negro' piezas = 1 stock = 100
          url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-Libreta-Organizador-3_6957cc03-b3c0-4e14-9f33-8e953528f335_600x.jpg?v=1588284008' )

          ( client = sy-mandt id_art = 3 descr = 'Marcadores' desc2 = 'Zebra Mildliner Colores Pasteles'
          color = 'varios' piezas = 5 stock = 20
          url = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-zebra-mildliner-pasteles-01_600x.jpg?v=1711595335' )

          ( client = sy-mandt id_art = 4 descr = 'Lapiz' desc2 = 'Lápiz Social A280 HB'
          color = 'negro' piezas = 1 stock = 1
          url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-social-hb-cafe-claro_600x.jpg?v=1617141325' )
         ).

         INSERT zdmt_tab_art FROM TABLE @it_art.
         if sy-subrc = 0.
           out->write( 'Insert OK' ).
           ELSE.
           out->write( 'Insert Wrong' ).
         endif.

  ENDMETHOD.
ENDCLASS.
