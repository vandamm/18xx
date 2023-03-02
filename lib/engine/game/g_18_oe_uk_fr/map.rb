# frozen_string_literal: true

module Engine
  module Game
    module G18OEUKFR
      module Map
        LAYOUT = :pointy
        AXES = { x: :number, y: :letter }.freeze
        TILE_TYPE = :lawson

        TILES = {
          '3' => 14,
          '4' => 25,
          '5' => 25,
          '6' => 15,
          '7' => 14,
          '8' => 99,
          '9' => 99,
          '12' => 10,
          '13' => 8,
          '57' => 19,
          '58' => 25,
          '80' => 5,
          '81' => 5,
          '82' => 20,
          '83' => 20,
          '141' => 15,
          '142' => 15,
          '143' => 5,
          '144' => 5,
          '145' => 13,
          '146' => 21,
          '147' => 13,
          '201' => 9,
          '202' => 18,
          '205' => 17,
          '206' => 17,
          '207' => 12,
          '208' => 9,
          '544' => 8,
          '545' => 8,
          '546' => 7,
          '621' => 12,
          '622' => 9,
        }.freeze

        LOCATION_NAMES = {
          'C28' => 'Norwegian Coast (to Narvik)',
          'D13' => 'Scottish Highlands',
          'E14' => 'Inverness',
          'E16' => 'Aberdeen',
          'F13' => 'Glasgow',
          'F15' => 'Dundee',
          'G12' => 'Stranraer',
          'G14' => 'Edinburgh',
          'H5' => 'Silgo',
          'H9' => 'Belfast',
          'H17' => 'Newcastle Upon Tyne',
          'I4' => 'Limerick',
          'I8' => 'Dublin',
          'I14' => 'Preston',
          'J3' => 'Cork',
          'J5' => 'Waterford',
          'J11' => 'Hollyhead',
          'J13' => 'Liverpool',
          'J15' => 'Manchester',
          'J17' => 'Leeds and Sheffield',
          'K14' => 'Birmingham',
          'L11' => 'Cardiff',
          'L13' => 'Bristol',
          'L17' => 'Cambridge',
          'M14' => 'Southampton and Portsmouth',
          'M16' => 'London',
          'N9' => 'English Channel',
          'N19' => 'Lille',
          'N21' => 'Gent',
          'N23' => 'Brussel',
          'O12' => 'Cherbourg',
          'O16' => 'Le Havre',
          'P1' => 'New York',
          'P3' => 'North Atlantic',
          'P7' => 'Brest',
          'P17' => 'Rouen',
          'P21' => 'Reims',
          'P25' => 'Luxembourg',
          'P27' => 'Berlin',
          'Q14' => 'Le Mans',
          'Q18' => 'Paris',
          'Q26' => 'Nancy',
          'R11' => 'Nantes',
          'R17' => 'Orleans',
          'S8' => 'Bay of Biscay',
          'S22' => 'Dijon',
          'T15' => 'Limoges',
          'T25' => 'Geneve and Lausanne',
          'U12' => 'Bordeaux',
          'U20' => 'Saint-Etienne',
          'U22' => 'Lyon',
          'V9' => 'Bayonne',
          'V15' => 'Toulouse',
          'W20' => 'Nimes and Montpellier',
          'X11' => 'Madrid',
          'X13' => 'Andorra',
          'X21' => 'Marseille',
          'X23' => 'Toulon',
          'X25' => 'Nice',
          'Z29' => 'Ajaccio',
          'AA2' => 'North Africa & The Americas',
          'AA12' => 'Alger',
          'AA26' => 'Constantinople',
        }.freeze

        HEXES = {
          white: {
            %w[H7 H15 I6 I16 K16 K18 L15 M12 N25 O18 O20 O22 O24 O26 P9 P11 P13 P15 P19 P23 Q10 Q12 Q16 Q20 Q22 Q24 R13 R15
               R19 R21 R23 R25 S12 S14 S16 S18 S20 S24 T13 T17 T19 T23 U10 U14 U16 V11 V13 V21 W14 W16 W18 W22 X17] => '',
            %w[K10 M10 R27 T21] => 'upgrade=cost:30,terrain:mountain',
            %w[G6 H3 J7 K12 S26 U18 V17 V23 W24 Y16] => 'upgrade=cost:45,terrain:mountain',
            %w[U24 V19 V25 W12 W26 X15] => 'upgrade=cost:60,terrain:mountain',
            %w[U26 W10] => 'upgrade=cost:120,terrain:mountain',
            %w[G4 G8 I2] => 'upgrade=cost:30,terrain:water',
            %w[E12 H13 J1 Q8] => 'upgrade=cost:45,terrain:water',
            %w[F11 T11] => 'upgrade=cost:60,terrain:water',
            %w[H5 H17 J5 L17 N21 O12 P7 P17 P21 P25 R17 S22 T15 X23 X25 Z29] => 'town=revenue:0',
            %w[J17 M14 W20] => 'town=revenue:0;town=revenue:0',
            %w[F13 H9 J3 L13 Q14 Q26 R11 V15] => 'city=revenue:0',
            %w[F17 L19] => 'border=edge:0,type:impassable',
            ['F15'] => 'town=revenue:0;border=edge:0,type:impassable;border=edge:5,type:impassable',
            ['G16'] => 'border=edge:2,type:impassable;border=edge:3,type:impassable',
            ['M18'] => 'border=edge:3,type:impassable;border=edge:5,type:impassable;upgrade=cost:45,terrain:water',
            ['V9'] => 'town=revenue:0;border=edge:1,type:impassable',
            %w[G12 I4 I14] => 'town=revenue:0;upgrade=cost:30,terrain:mountain',
            %w[E14 E16 J11] => 'town=revenue:0;upgrade=cost:45,terrain:mountain',
            ['X13'] => 'town=revenue:0;upgrade=cost:60,terrain:mountain',
            ['L11'] => 'town=revenue:0;upgrade=cost:45,terrain:water',
            ['T25'] => 'town=revenue:0;town=revenue:0;upgrade=cost:45,terrain:mountain',
            ['G14'] => 'city=revenue:10;label=Y;upgrade=cost:30,terrain:mountain;border=edge:3,type:impassable',
            ['I8'] => 'city=revenue:10;path=a:4,b:_0',
            ['K14'] => 'city=revenue:0;label=A',
            ['M16'] => 'city=revenue:30;label=L;upgrade=cost:30,terrain:water;path=a:5,b:_0',
            ['N19'] => 'city=revenue:20;label=Y;path=a:1,b:_0;border=edge:2,type:impassable',
            ['N23'] => 'city=revenue:0;label=Y;upgrade=cost:30,terrain:water',
            ['O16'] => 'city=revenue:10;path=a:_0,b:1',
            ['Q18'] => 'city=revenue:0;label=P',
            ['U12'] => 'city=revenue:10',
            ['U20'] => 'city=revenue:0;upgrade=cost:30,terrain:mountain',
            ['U22'] => 'city=revenue:0;label=Y',
            ['X21'] => 'city=revenue:20;label=Y;path=a:_0,b:5',
          },
          yellow: {
            ['J13'] => 'city=revenue:30;label=Y;path=a:2,b:_0;path=a:_0,b:4',
            ['J15'] => 'city=revenue:20;upgrade=cost:30,terrain:mountain;path=a:1,b:_0;path=a:_0,b:4',
          },
          red: {
            ['C28'] => 'offboard=revenue:yellow_30|green_60|brown_80|gray_120;path=a:1,b:0',
            ['D13'] => 'offboard=revenue:yellow_20|green_40|brown_50;path=a:0,b:_0;path=a:5,b:_0',
            ['P1'] => 'offboard=revenue:green_60|brown_100|gray_160;path=a:3,b:_0;path=a:5,b:_0',
            ['P27'] => 'offboard=revenue:yellow_30|green_60|brown_90|gray_120;path=a:0,b:_0;path=a:1,b:_0;path=a:2,b:_0',
            ['X11'] => 'offboard=revenue:yellow_30|green_50|brown_80|gray_100;path=a:2,b:_0;path=a:3,b:_0;path=a:4,b:_0',
            ['AA2'] => 'offboard=revenue:green_40|brown_80|gray_120;path=a:4,b:_0',
            ['AA12'] => 'offboard=revenue:yellow_30|green_40|brown_60|gray_100;path=a:2,b:_0',
            ['AA26'] => 'offboard=revenue:yellow_30|green_50|brown_80|gray_100;path=a:2,b:_0',
          },
          blue: {
            # north atlantic
            ['O2'] => 'border=edge:5',
            ['P3'] => 'border=edge:0;border=edge:2',
            ['Q2'] => 'border=edge:3',

            # english channel
            ['N7'] => 'border=edge:0;border=edge:4;border=edge:5',
            ['N9'] => 'border=edge:0;border=edge:1;border=edge:4;border=edge:5',
            ['N13'] => 'path=a:0,b:3;offboard=revenue:0;border=edge:1;border=edge:4;border=edge:5', # -1 ferry
            %w[N11 N15] => 'border=edge:0;border=edge:1;border=edge:4',
            ['N17'] => 'path=a:2,b:4;border=edge:1',
            ['O6'] => 'junction;path=a:5,b:_0,terminal:1;border=edge:3;border=edge:4',
            ['O8'] => 'border=edge:1;border=edge:2;border=edge:3;border=edge:4',
            ['O10'] => 'border=edge:1;border=edge:2;border=edge:3',
            ['O14'] => 'junction;path=a:1,b:_0,terminal:1;border=edge:2;border=edge:3',

            # bay of biscay
            ['P5'] => 'border=edge:0;border=edge:5', # needs a port
            ['Q4'] => 'border=edge:3;border=edge:4;border=edge:5',
            ['Q6'] => 'border=edge:0;border=edge:1;border=edge:2;border=edge:5',
            %w[R5 S6 T7] => 'border=edge:2;border=edge:3;border=edge:4;border=edge:5',
            ['R7'] => 'border=edge:0;border=edge:1;border=edge:2;border=edge:4;border=edge:5',
            ['R9'] => 'border=edge:0;border=edge:1;border=edge:5', # needs a port
            ['S8'] => 'border=edge:0;border=edge:1;border=edge:2;border=edge:3;border=edge:4;border=edge:5',
            ['S10'] => 'border=edge:0;border=edge:1;border=edge:2',
            ['T9'] => 'border=edge:0;border=edge:1;border=edge:2;border=edge:3', # needs an offshore port
            ['U8'] => 'border=edge:2;border=edge:3',

            # celtic sea
            ['G10'] => 'path=a:0,b:4;border=edge:2;border=edge:5',
            ['O4'] => 'border=edge:2;border=edge:3',

            # sea of sardinia
            ['Y26'] => 'path=a:2,b:4;border=edge:0;border=edge:1;border=edge:3;border=edge:4;border=edge:5',
            ['Y28'] => 'path=a:1,b:5;border=edge:0;border=edge:1;border=edge:2;border=edge:3',
          },
        }.freeze
      end
    end
  end
end
