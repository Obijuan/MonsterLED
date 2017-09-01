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
            "x": 528,
            "y": 56
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
            "x": 528,
            "y": 128
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
            "x": 528,
            "y": 200
          }
        },
        {
          "id": "42a678ea-8111-466a-80c7-7cd6234dd4ab",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "pins": [
              {
                "index": "0",
                "name": "LED0",
                "value": "95"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 360,
            "y": 224
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
            "x": 528,
            "y": 280
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
            "x": 528,
            "y": 352
          }
        },
        {
          "id": "d7ed5612-554e-4685-af0e-5c997308a545",
          "type": "basic.input",
          "data": {
            "name": "swtich",
            "pins": [
              {
                "index": "0",
                "name": "D0",
                "value": "119"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 176,
            "y": 376
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "d7ed5612-554e-4685-af0e-5c997308a545",
            "port": "out"
          },
          "target": {
            "block": "42a678ea-8111-466a-80c7-7cd6234dd4ab",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "d7ed5612-554e-4685-af0e-5c997308a545",
            "port": "out"
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
        "x": -10,
        "y": 23
      },
      "zoom": 1
    }
  },
  "dependencies": {}
}