{
  "version": "1.1",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "1df3eead-7b5a-4ba8-8def-71747d7f2c35",
          "type": "basic.output",
          "data": {
            "name": "VGA_RED",
            "pins": [
              {
                "index": "0",
                "name": "GP1",
                "value": "38"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 616,
            "y": 8
          }
        },
        {
          "id": "ed3e6a80-7c0d-4080-8939-6f5332849fe0",
          "type": "basic.output",
          "data": {
            "name": "VGA_GREEN",
            "pins": [
              {
                "index": "0",
                "name": "GP3",
                "value": "41"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 616,
            "y": 80
          }
        },
        {
          "id": "71ea7fd8-e72d-452f-a12f-51330f9734b3",
          "type": "basic.output",
          "data": {
            "name": "VGA_BLUE",
            "pins": [
              {
                "index": "0",
                "name": "GP5",
                "value": "43"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 616,
            "y": 152
          }
        },
        {
          "id": "f1082ce7-7e54-4f0c-850e-07052cce0927",
          "type": "basic.output",
          "data": {
            "name": "VGA_HS",
            "pins": [
              {
                "index": "0",
                "name": "GP0",
                "value": "37"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 624,
            "y": 312
          }
        },
        {
          "id": "be32f600-adcb-4f69-a9b5-87c34a99a41a",
          "type": "basic.output",
          "data": {
            "name": "VGA_VS",
            "pins": [
              {
                "index": "0",
                "name": "GP2",
                "value": "39"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 624,
            "y": 400
          }
        },
        {
          "id": "37653c30-cd19-46c2-9d49-98e8e019eb7e",
          "type": "basic.code",
          "data": {
            "code": "reg [9:0] CounterX;\nreg [8:0] CounterY;\nwire CounterXmaxed = (CounterX==390);\n\nalways @(posedge clk)\nif(CounterXmaxed)\n  CounterX <= 0;\nelse\n  CounterX <= CounterX + 1;\n\nalways @(posedge clk)\nif(CounterXmaxed)\n    CounterY <= CounterY + 1;\n    \n    \nreg vga_HS, vga_VS;\nalways @(posedge clk)\nbegin\n  vga_HS <= (CounterX[9:3]==0);   // active for 16 clocks\n  vga_VS <= (CounterY==0);   // active for 768 clocks\nend\n\nassign vga_h_sync = ~vga_HS;\nassign vga_v_sync = ~vga_VS; \n\nassign R = CounterY[3] | (CounterX==256);\nassign G = (CounterX[5] ^ CounterX[6]) | (CounterX==256);\nassign B = CounterX[4] | (CounterX==256); \n\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                }
              ],
              "out": [
                {
                  "name": "R"
                },
                {
                  "name": "G"
                },
                {
                  "name": "B"
                },
                {
                  "name": "vga_h_sync"
                },
                {
                  "name": "vga_v_sync"
                }
              ]
            }
          },
          "position": {
            "x": 64,
            "y": 16
          },
          "size": {
            "width": 432,
            "height": 464
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "37653c30-cd19-46c2-9d49-98e8e019eb7e",
            "port": "R"
          },
          "target": {
            "block": "1df3eead-7b5a-4ba8-8def-71747d7f2c35",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "37653c30-cd19-46c2-9d49-98e8e019eb7e",
            "port": "G"
          },
          "target": {
            "block": "ed3e6a80-7c0d-4080-8939-6f5332849fe0",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "37653c30-cd19-46c2-9d49-98e8e019eb7e",
            "port": "B"
          },
          "target": {
            "block": "71ea7fd8-e72d-452f-a12f-51330f9734b3",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "37653c30-cd19-46c2-9d49-98e8e019eb7e",
            "port": "vga_h_sync"
          },
          "target": {
            "block": "f1082ce7-7e54-4f0c-850e-07052cce0927",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "37653c30-cd19-46c2-9d49-98e8e019eb7e",
            "port": "vga_v_sync"
          },
          "target": {
            "block": "be32f600-adcb-4f69-a9b5-87c34a99a41a",
            "port": "in"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": 135,
        "y": 109
      },
      "zoom": 1
    }
  },
  "dependencies": {}
}