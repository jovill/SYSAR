require([
      "esri/Map",
      "esri/views/SceneView",
      "esri/layers/SceneLayer",
      "esri/renderers/SimpleRenderer",
      "esri/symbols/MeshSymbol3D",
      "esri/symbols/FillSymbol3DLayer",

      "dojo/domReady!"
    ], function(Map, SceneView, SceneLayer, SimpleRenderer, MeshSymbol3D,
      FillSymbol3DLayer) {

      // Create Map
      var map = new Map({
          basemap: "satellite",
        ground: "world-elevation"
      });

      // Create the SceneView
      var view = new SceneView({
        container: "viewDiv",
        map: map,
        camera: {
            position: [-43.9417694, -19.9870495, 707],
          tilt: 81,
          heading: 50
        }
      });

      // Create SceneLayer and add to the map
      var sceneLayer = new SceneLayer({
        url: "https://tiles.arcgis.com/tiles/z2tnIkrLQ2BRzr6P/arcgis/rest/services/New_York_LoD2_3D_Buildings/SceneServer/layers/0",
        popupEnabled: false
      });
      map.add(sceneLayer);

      // Create MeshSymbol3D for symbolizing SceneLayer
      var symbol = new MeshSymbol3D(
        new FillSymbol3DLayer({
          // If the value of material is not assigned, the default color will be grey
          material: {
            color: [244, 247, 134]
          }
        })
      );
      // Add the renderer to sceneLayer
      sceneLayer.renderer = new SimpleRenderer({
        symbol: symbol
      });
    });