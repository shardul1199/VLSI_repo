-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity k2c_dot_2_dense_1DeQ_rom is 
    generic(
             DWIDTH     : integer := 32; 
             AWIDTH     : integer := 9; 
             MEM_SIZE    : integer := 512
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of k2c_dot_2_dense_1DeQ_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110010001011011011111010110", 
    1 => "10111101000000000001011000001011", 
    2 => "10111110100010000011000111000000", 
    3 => "00111100100000000100000011110101", 
    4 => "10111101101000001110110000000111", 
    5 => "00111110010010001111100111011001", 
    6 => "00111011111110100100001010111110", 
    7 => "10111110011101101010001110011111", 
    8 => "10111100010000111110100010100101", 
    9 => "10111110100111100001010011010010", 
    10 => "10111110100110011111111110101100", 
    11 => "00111110001101001101011010001111", 
    12 => "00111110010001100101111110111101", 
    13 => "00111110100000101000000111110001", 
    14 => "00111110001011111001001011100011", 
    15 => "10111110000100100010011000110010", 
    16 => "00111101110001110011101101010101", 
    17 => "00111110001011010000100110110001", 
    18 => "00111110100110101100111100011000", 
    19 => "10111110101110110011101011000111", 
    20 => "00111110011001011100011101001111", 
    21 => "10111101110010001010110000110111", 
    22 => "10111110001101100011001011001000", 
    23 => "00111110011101000111010001001000", 
    24 => "10111110001110001001001011010111", 
    25 => "10111110000011011100100100011111", 
    26 => "10111101110111110110000100110000", 
    27 => "10111110100111011100010111101111", 
    28 => "00111110100000101000000110101100", 
    29 => "00111110010010101010011100111100", 
    30 => "00111110010101011000111010100101", 
    31 => "10111100001000110000101110100111", 
    32 => "00111100100101000111000010000010", 
    33 => "10111110100011111001100101110011", 
    34 => "10111101101100101100111011001000", 
    35 => "00111110101010101010000100010101", 
    36 => "00111110101111110101010111011010", 
    37 => "10111110001110010000111001100101", 
    38 => "10111110011001101010011100110100", 
    39 => "00111110110011011010111101101000", 
    40 => "10111110101010010111110001011111", 
    41 => "10111110100110110000100000000101", 
    42 => "10111110010000101001100110101100", 
    43 => "10111110001110100101011110101011", 
    44 => "00111110100000101011011100011100", 
    45 => "10111110000111011101101000000010", 
    46 => "00111110010111001111010000101001", 
    47 => "00111110011000101001111101010001", 
    48 => "00111110001001111110010011111001", 
    49 => "10111110101110101010000001001011", 
    50 => "00111110001101101101001111001101", 
    51 => "10111110010110000001100011010001", 
    52 => "00111110000110010111011101100010", 
    53 => "00111101101011110011110110010011", 
    54 => "10111101010010001010000111101110", 
    55 => "00111110101101011101000111000001", 
    56 => "10111110000001011000010000101000", 
    57 => "00111110001010010000000100011010", 
    58 => "00111110100010101101101101010010", 
    59 => "10111110100100010010100010011011", 
    60 => "00111101100100010011101101101101", 
    61 => "10111110000001111011110100010100", 
    62 => "10111100001000101011111011000010", 
    63 => "10111110100001111100111001101101", 
    64 => "10111110100010001010110100110100", 
    65 => "00111100100010011101011101010110", 
    66 => "10111110101011100001000010010010", 
    67 => "00111110100111011100100100001011", 
    68 => "00111110100001010000000111000100", 
    69 => "10111101110110110101111111011110", 
    70 => "00111110001100101001111010100101", 
    71 => "00111110100101110010110011011010", 
    72 => "10111110100011100010110011100010", 
    73 => "10111110100101011100000101000101", 
    74 => "10111100000010010111101001110110", 
    75 => "00111101001100010001010110000101", 
    76 => "00111101001011110101110111011011", 
    77 => "00111110011000011110111011101110", 
    78 => "00111110101100100110010110111001", 
    79 => "00111110100011111100011111000100", 
    80 => "00111110000111101100101010110000", 
    81 => "10111101111110011111101101111101", 
    82 => "10111101111111100001101111001001", 
    83 => "10111100101011010101010001100010", 
    84 => "10111110100111001111101000000001", 
    85 => "00111110110000011101100101110101", 
    86 => "10111110100011011010101101111100", 
    87 => "10111110100001100100101111010101", 
    88 => "00111110010100110101010011100010", 
    89 => "00111100100010001100010001101000", 
    90 => "10111110000001000101111000111110", 
    91 => "10111110100111111010100101111100", 
    92 => "00111110010010111111010110011111", 
    93 => "10111101100000010011010010111001", 
    94 => "00111110100010101100101000001101", 
    95 => "00111110100101111110111001010101", 
    96 => "00111100101000101010011010001001", 
    97 => "10111110001111010101000111101000", 
    98 => "10111101010101000100100101011000", 
    99 => "00111110001101010001011100111001", 
    100 => "10111101101000110001011010000010", 
    101 => "00111101010111111001100001100101", 
    102 => "10111100011000000010010110110110", 
    103 => "00111110101011001111101100010100", 
    104 => "10111011101100001000001001111001", 
    105 => "10111100011100111000111111001100", 
    106 => "10111101001111110001101000010101", 
    107 => "10111110100110000101100001111010", 
    108 => "00111110101011000100100010011111", 
    109 => "00111101010111111000000111110011", 
    110 => "00111110010000101101100100111001", 
    111 => "00111101101111001010000101010111", 
    112 => "10111110011010101011101101000111", 
    113 => "00111110000000001100100010000010", 
    114 => "10111110001101010001001001100101", 
    115 => "00111110010101010011101010011010", 
    116 => "10111100010011110001111011001100", 
    117 => "00111110010110110110011110011000", 
    118 => "10111110100011000000111110000111", 
    119 => "10111110100010100010111101110101", 
    120 => "10111110100001110110110100101100", 
    121 => "10111101011110010010001110111000", 
    122 => "10111101110010110011010110011110", 
    123 => "00111110100010001111000010100110", 
    124 => "00111110100111000011001110100111", 
    125 => "10111110000000010011010110110010", 
    126 => "10111110011110001111110101100110", 
    127 => "10111101100110010111000001000100", 
    128 => "10111110100110001010110100111110", 
    129 => "10111110011011001100110100110111", 
    130 => "10111101111000010100000001010111", 
    131 => "00111110110001011010001000110101", 
    132 => "10111110100010101011001011010000", 
    133 => "00111110000000100101111011111100", 
    134 => "10111110010010111010100110111000", 
    135 => "00111110110000100000100110000100", 
    136 => "10111110000110001100100001100010", 
    137 => "10111100001010011110111000000101", 
    138 => "10111110100101100100101100111010", 
    139 => "10111110100001001010111111100101", 
    140 => "00111110001100011110001110000010", 
    141 => "10111100110000101011010001000100", 
    142 => "00111110100100101110101011100000", 
    143 => "00111101100110111010110100011000", 
    144 => "00111101100111001101001000011011", 
    145 => "10111110001001011100110001111110", 
    146 => "10111110100001100111101011001111", 
    147 => "00111110001000000100001001010110", 
    148 => "00111101110011110100100111000101", 
    149 => "10111101101000010001001110100100", 
    150 => "00111110100100001010110010000100", 
    151 => "00111110010110101010011000100100", 
    152 => "10111101100011010001000101100000", 
    153 => "10111110101110101010001111110001", 
    154 => "10111101000101100110000101001000", 
    155 => "00111110001101011000010000010010", 
    156 => "10111101101000110001011111100111", 
    157 => "10111110011110010110001111110001", 
    158 => "10111110001101110010111011111110", 
    159 => "00111110010111001111011110110000", 
    160 => "10111110100110101001100001001000", 
    161 => "00111110001110000001101010011011", 
    162 => "00111110100101011100111111001111", 
    163 => "10111110000100111011011001101010", 
    164 => "10111110001010010111101111001110", 
    165 => "10111110011010010000001011110011", 
    166 => "00111101111111110000100011000011", 
    167 => "10111101100001000100111100100011", 
    168 => "00111110100011100100000010001101", 
    169 => "10111110011110100010010010010110", 
    170 => "10111110100111010110111011000110", 
    171 => "10111110101001111011101010010010", 
    172 => "10111110001000111110100001000001", 
    173 => "00111110011111000001111110010011", 
    174 => "00111101011111110001000111101100", 
    175 => "10111110001110111010101111110000", 
    176 => "10111101101011101100010100010011", 
    177 => "10111101101100011100110110000100", 
    178 => "00111110010000000110000010000010", 
    179 => "00111110011010100111111001011000", 
    180 => "00111110001011110001101010001110", 
    181 => "10111101110011000101010100011001", 
    182 => "10111101010001111101101010011001", 
    183 => "10111101101101110011100110110001", 
    184 => "00111011100001001101001010101000", 
    185 => "10111101101001000100010011110111", 
    186 => "00111110000111011101001010011001", 
    187 => "10111110010111110110100001010111", 
    188 => "10111101011100111111011011000111", 
    189 => "00111110100110111100111110001111", 
    190 => "10111101000101101001010111000011", 
    191 => "10111101001111111011011000101111", 
    192 => "10111101111101100101001000111110", 
    193 => "10111110100010011010010100000111", 
    194 => "00111101100100010000110000011000", 
    195 => "10111110100001100000010101110011", 
    196 => "10111110000000100110100111011100", 
    197 => "10111110000011010000010011101111", 
    198 => "10111101101100011111011011011110", 
    199 => "10111110101010010010011000111010", 
    200 => "00111101010011110010101101010000", 
    201 => "10111110001100100100011000010111", 
    202 => "10111110100100000010111011100010", 
    203 => "10111110001100010111000100111011", 
    204 => "00111110011111100010100010010110", 
    205 => "10111110001011110100111101111101", 
    206 => "00111110011100011110110110001001", 
    207 => "00111101011111101110110010101101", 
    208 => "00111101110011111100111001101000", 
    209 => "00111110001110001100100101101101", 
    210 => "10111110100000100001001101101001", 
    211 => "00111110000000001001011100101000", 
    212 => "00111110101111101110110000110000", 
    213 => "00111101011000010011001111000000", 
    214 => "10111110101001001100110101000000", 
    215 => "00111110011010010001110111011001", 
    216 => "00111110100101000011000000000001", 
    217 => "00111101101010001100000111001100", 
    218 => "00111110010011010110100000111010", 
    219 => "00111110011100101110111110100101", 
    220 => "10111010111010100100101000000111", 
    221 => "00111101001011111101001011000010", 
    222 => "10111110100000110001011010111100", 
    223 => "10111101101001101010001101100000", 
    224 => "00111110100011100111010001111000", 
    225 => "00111110100000010000111000010010", 
    226 => "10111110000001001101100101110010", 
    227 => "00111101000111010100101010011101", 
    228 => "00111100111101011011111101001010", 
    229 => "00111110000001001100000111110000", 
    230 => "00111110000110101110001100110110", 
    231 => "00111110101110010001000011111100", 
    232 => "00111110101101100000110100100010", 
    233 => "10111101110000001101011000111000", 
    234 => "10111101111110000110100001001111", 
    235 => "10111100101010101100110110001010", 
    236 => "00111101011011100110101000100000", 
    237 => "10111110100100100101000111100111", 
    238 => "00111101101101001010100110101010", 
    239 => "10111110000110110110111001101110", 
    240 => "10111110010111010000110100111100", 
    241 => "10111101001111010011110101001000", 
    242 => "10111110100110100001001001100100", 
    243 => "00111011100010001100100100110011", 
    244 => "10111110010010010101100000011110", 
    245 => "00111101010111101010111111001001", 
    246 => "00111110001110000111110110110110", 
    247 => "10111110001001100001000011100011", 
    248 => "00111100100101110000001001101100", 
    249 => "10111110101101011111100000001101", 
    250 => "00111101110010111010000110101001", 
    251 => "00111110010111111101101000001011", 
    252 => "00111101110001010001001101000010", 
    253 => "00111101100011010001011100001001", 
    254 => "10111101001100101101100010001011", 
    255 => "10111110101001111001100110010010", 
    256 => "00111110000101110000001110110011", 
    257 => "00111110100000001111100010110110", 
    258 => "00111110010010010001111111101111", 
    259 => "10111110000011110001111111010011", 
    260 => "00111100001101010101001010011010", 
    261 => "10111101101001010111010100001000", 
    262 => "10111110100010011001001010010011", 
    263 => "00111101110011100111110100100011", 
    264 => "10111110011011101010011010010100", 
    265 => "00111101011010001111101110100101", 
    266 => "00111110100100010101001001001110", 
    267 => "10111101110111011001001010111111", 
    268 => "00111110000100101010100000010001", 
    269 => "10111110010001111000011100110101", 
    270 => "00111100101010010010101011111100", 
    271 => "00111110101100001110010101000111", 
    272 => "10111101110111110011000101111110", 
    273 => "00111101110000000010100101011001", 
    274 => "00111110010011001010001110010001", 
    275 => "00111101011101111111111111001001", 
    276 => "10111101011010110000111100010110", 
    277 => "10111110100101111100110100011110", 
    278 => "10111110101010110110001010000011", 
    279 => "00111110100111100000100010111010", 
    280 => "00111110010111101001111000010101", 
    281 => "10111101100111000111011011000010", 
    282 => "00111110010101110011001100111011", 
    283 => "00111101101010101011000000111011", 
    284 => "00111110011101111001000110001000", 
    285 => "10111110010000101011000000100100", 
    286 => "10111101011100000100000110010001", 
    287 => "00111101100111110001100100101111", 
    288 => "10111110001000101110110011000101", 
    289 => "00111100011110110010010100011111", 
    290 => "10111101010011011011010011101111", 
    291 => "00111101110111111101111000110000", 
    292 => "10111101100000100100011110111001", 
    293 => "10111110100101001000100011100011", 
    294 => "10111110100010101101110101010010", 
    295 => "10111101000000000010000110010001", 
    296 => "10111110100010111000111111110110", 
    297 => "00111110011001110111001100110100", 
    298 => "10111101110011001001101111111011", 
    299 => "10111101001111000001011001111110", 
    300 => "00111110101010010100110010100011", 
    301 => "10111011111010001110000110010101", 
    302 => "10111110011100011101110100110011", 
    303 => "10111011011100000000011111000100", 
    304 => "00111110001011100111001110000010", 
    305 => "10111110011101101101100000100101", 
    306 => "10111110101010111011110000100100", 
    307 => "00111101001100010001111001101000", 
    308 => "00111011100110001011001010011110", 
    309 => "10111110101111111000110000011100", 
    310 => "00111110100101001101011110010101", 
    311 => "10111101110100010101000010100100", 
    312 => "10111110100111000100000000100000", 
    313 => "00111101110110101100101100110101", 
    314 => "00111110001100100111100101000000", 
    315 => "00111110011000110111110101101110", 
    316 => "10111110011011111011101010001111", 
    317 => "10111101110110010110110001010110", 
    318 => "10111110100010111110011110000010", 
    319 => "10111100111001010010001011110000", 
    320 => "00111110101001111011110001001010", 
    321 => "00111101001001111101111011111101", 
    322 => "10111101110000100100001001100110", 
    323 => "00111110100010100111001011100100", 
    324 => "00111110011010101010010111000110", 
    325 => "10111110001111101100000000001111", 
    326 => "00111101001011111110011110111110", 
    327 => "10111110001111100001100101001010", 
    328 => "10111101000111001100010010111111", 
    329 => "10111101110100001010011010111110", 
    330 => "00111101010010111100101111011011", 
    331 => "00111110010010100111101010111110", 
    332 => "00111110100101101000010000011100", 
    333 => "00111110010010100011000010100010", 
    334 => "10111110100000101110111111000000", 
    335 => "00111110100100011010010000011110", 
    336 => "10111110101100011111111110011100", 
    337 => "00111110101011011100011010111111", 
    338 => "00111110101101110011010011111100", 
    339 => "00111110101001010110111110001101", 
    340 => "10111110000111110010101010011100", 
    341 => "00111110010110001100100000101110", 
    342 => "00111011101111101111100110010001", 
    343 => "10111101111001000000001101110110", 
    344 => "00111110100101010001010100001001", 
    345 => "10111110100111100001101110000011", 
    346 => "10111110001100000000111101000111", 
    347 => "10111110100011101111111000010001", 
    348 => "00111110011000010001111011100110", 
    349 => "10111110100001110010010000001111", 
    350 => "10111110000011111011000111100001", 
    351 => "10111110100010001000001111110111", 
    352 => "10111110101100010010111010101110", 
    353 => "10111110001010111000110101001110", 
    354 => "10111110100010010110100010011111", 
    355 => "10111110101100011110110011100100", 
    356 => "10111100100100111100000101101011", 
    357 => "00111101000001111111101010100110", 
    358 => "10111101100111011000011101110101", 
    359 => "10111110100110101010101011111000", 
    360 => "00111110101010001011101001111010", 
    361 => "10111100101110101010110101111110", 
    362 => "00111110101100011011100001101110", 
    363 => "10111110100110110110100010101101", 
    364 => "10111100100101111010101001110001", 
    365 => "10111110101010110010110101001011", 
    366 => "00111101110111001010011100110001", 
    367 => "00111110001001110000010011111100", 
    368 => "10111101100111011001111001011100", 
    369 => "10111011001001111001011010001100", 
    370 => "10111110000111011110110000010011", 
    371 => "00111110100000011110100010101010", 
    372 => "00111110110001011101110101011010", 
    373 => "00111110001001010101110010111010", 
    374 => "10111110100001010111011100011101", 
    375 => "00111110100101110001100111110111", 
    376 => "00111110001000001100101111011101", 
    377 => "10111110000010101000001000010110", 
    378 => "10111101100011101001111011100100", 
    379 => "10111101111010111101011011010011", 
    380 => "10111101100111011001000000001101", 
    381 => "00111110010111101000011101000011", 
    382 => "10111110010110110100000010110101", 
    383 => "10111110100000010000000111110011", 
    384 => "00111101000010100100110011000101", 
    385 => "00111110010101010110110111100101", 
    386 => "00111110110010001111000100010110", 
    387 => "10111100101101001001011100001000", 
    388 => "10111110011000100011110010100100", 
    389 => "00111110101100011101001101110111", 
    390 => "00111110010011101001010110111000", 
    391 => "10111100111110000010110000011001", 
    392 => "10111110001110011001011011010010", 
    393 => "10111110010010000110001001110001", 
    394 => "10111110001101101010000000011001", 
    395 => "10111110010010111110111101100101", 
    396 => "00111110101111100000011000100010", 
    397 => "10111100010010001100111110101100", 
    398 => "00111110011110100110101111110111", 
    399 => "00111100111110111100110000000001", 
    400 => "10111101011100110001011101011111", 
    401 => "00111101001100110011101111010010", 
    402 => "00111110101001100010000111010010", 
    403 => "10111110000000001000100010011000", 
    404 => "00111110101010100010111110011000", 
    405 => "10111101111001100100011000010001", 
    406 => "10111110100111100101111100100111", 
    407 => "00111101001100000111000010000110", 
    408 => "10111100010010010001111000001100", 
    409 => "00111110011111100100111101011010", 
    410 => "10111110000111010001101001011111", 
    411 => "10111110001011000100011110010000", 
    412 => "10111110010101101100000110000010", 
    413 => "10111110100001101011011111111011", 
    414 => "10111101011000111111100011111001", 
    415 => "10111110100100010101101000110110", 
    416 => "00111110010011101010110000001000", 
    417 => "00111101111110000100011011101111", 
    418 => "00111110011100000100111000011101", 
    419 => "10111110011000001100000111100001", 
    420 => "00111110010010011001011101101101", 
    421 => "00111110100010101111001011101000", 
    422 => "00111110001001011011000001110011", 
    423 => "00111110010000011011101000010110", 
    424 => "00111110100100000100010000001101", 
    425 => "10111110101000111111000100001100", 
    426 => "00111110101000111101110000111001", 
    427 => "10111100100000010001111111100111", 
    428 => "10111110100011111101010110000010", 
    429 => "10111110100101001011000111011100", 
    430 => "00111110011100110000000001001111", 
    431 => "10111101011011001111101111000010", 
    432 => "10111101110011100100000110000111", 
    433 => "10111110001100011011100010110111", 
    434 => "00111110101011000011101011000001", 
    435 => "10111110011110111010001001110111", 
    436 => "10111101101000100010011000001100", 
    437 => "10111101110010010111011001011110", 
    438 => "00111110101001111010100101000001", 
    439 => "10111110011010001001011100111001", 
    440 => "10111110100100100001101001001110", 
    441 => "00111110000011010111011001011101", 
    442 => "00111110010011111010000001111010", 
    443 => "10111110000101011111110100001101", 
    444 => "10111110001101101100011011011000", 
    445 => "10111110001101101001101101111000", 
    446 => "10111110100011110101101011110111", 
    447 => "10111110001010100100011110110101", 
    448 => "10111101101011001100001110110110", 
    449 => "10111101101110111001101111100111", 
    450 => "00111110101111001001100011011100", 
    451 => "00111110101010010011100101000010", 
    452 => "10111110011000010110001101010101", 
    453 => "10111101011011100101010011001111", 
    454 => "10111110010101100000110011001001", 
    455 => "00111110010010111001100101000001", 
    456 => "00111110101001000000011110101100", 
    457 => "00111101110001000000001001110010", 
    458 => "00111101101110011011100000100000", 
    459 => "10111101101001111001110000111011", 
    460 => "00111110001000111110010111111101", 
    461 => "10111101011100111100100101101111", 
    462 => "10111110001000010001111011000001", 
    463 => "00111110100110011101010101010001", 
    464 => "10111110010111100001111101010010", 
    465 => "00111100000101101011001001000110", 
    466 => "10111110101011001000100100000010", 
    467 => "10111101000100100000100111000111", 
    468 => "00111110101000000100100011000110", 
    469 => "10111110010100011000011101000010", 
    470 => "10111110100100010110100111100111", 
    471 => "00111101001001000010001010001010", 
    472 => "10111110101011000101011011011110", 
    473 => "00111101110101001110010101101110", 
    474 => "00111110100111001101101110000001", 
    475 => "00111101111100111110001011100111", 
    476 => "00111110100010100111101101111001", 
    477 => "00111101101100110011100010001100", 
    478 => "10111110001011001110010111010001", 
    479 => "00111101110010000000001000010101", 
    480 => "10111110101000011001001001010001", 
    481 => "00111101000010010000011001000101", 
    482 => "00111110010101111011000000000010", 
    483 => "10111110100101011101011011011101", 
    484 => "10111110100111011100110011001111", 
    485 => "10111110100110000011110000001111", 
    486 => "00111101111001001010001100010000", 
    487 => "10111110100110101101111011001100", 
    488 => "00111101110101100110110011010101", 
    489 => "00111101001000100111000010001011", 
    490 => "10111110101011101100111011100111", 
    491 => "10111110101000110001011011100101", 
    492 => "10111110001100101110000110001100", 
    493 => "00111100011000000111100110100111", 
    494 => "10111110100101000110100111111000", 
    495 => "00111110101001111000111011011111", 
    496 => "10111110101011111010000111000010", 
    497 => "00111110100100100110000000001001", 
    498 => "10111101101011001101110000100001", 
    499 => "10111110000010110000110111111000", 
    500 => "10111110010101111001011010111111", 
    501 => "00111110000010011000001111011111", 
    502 => "00111110101100010001000001000111", 
    503 => "00111110001101101011100000001100", 
    504 => "00111101100110001101100011101010", 
    505 => "00111110100000011110010100010001", 
    506 => "10111100110111000000111110011010", 
    507 => "00111110101011110010001110010001", 
    508 => "10111101111001111101110111100011", 
    509 => "10111110100101000001001110110000", 
    510 => "00111010100010111111110011000110", 
    511 => "00111110000110001010001011101011" );


begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;


Library IEEE;
use IEEE.std_logic_1164.all;

entity k2c_dot_2_dense_1DeQ is
    generic (
        DataWidth : INTEGER := 32;
        AddressRange : INTEGER := 512;
        AddressWidth : INTEGER := 9);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of k2c_dot_2_dense_1DeQ is
    component k2c_dot_2_dense_1DeQ_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    k2c_dot_2_dense_1DeQ_rom_U :  component k2c_dot_2_dense_1DeQ_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


