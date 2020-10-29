import { Visual } from "../../src/visual";
import powerbiVisualsApi from "powerbi-visuals-api"
import IVisualPlugin = powerbiVisualsApi.visuals.plugins.IVisualPlugin
import VisualConstructorOptions = powerbiVisualsApi.extensibility.visual.VisualConstructorOptions
var powerbiKey: any = "powerbi";
var powerbi: any = window[powerbiKey];

var demoSunburst4BB94EA0EE28445F8BE8DD3925E23D23: IVisualPlugin = {
    name: 'demoSunburst4BB94EA0EE28445F8BE8DD3925E23D23',
    displayName: 'Custom Sunburst',
    class: 'Visual',
    apiVersion: '2.6.0',
    create: (options?: VisualConstructorOptions) => {
        if (Visual) {
            return new Visual(options);
        }

        throw 'Visual instance not found';
    },
    custom: true
};

if (typeof powerbi !== "undefined") {
    powerbi.visuals = powerbi.visuals || {};
    powerbi.visuals.plugins = powerbi.visuals.plugins || {};
    powerbi.visuals.plugins["demoSunburst4BB94EA0EE28445F8BE8DD3925E23D23"] = demoSunburst4BB94EA0EE28445F8BE8DD3925E23D23;
}

export default demoSunburst4BB94EA0EE28445F8BE8DD3925E23D23;