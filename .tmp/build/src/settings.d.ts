import { dataViewObjectsParser } from "powerbi-visuals-utils-dataviewutils";
import DataViewObjectsParser = dataViewObjectsParser.DataViewObjectsParser;
export declare class SunburstSettings {
    maxDepth: number;
    colorValue1: string;
    colorValue2: string;
    colorValue3: string;
}
export declare class VisualSettings extends DataViewObjectsParser {
    sunburst: SunburstSettings;
}
export declare class rcv_scriptSettings {
    provider: any;
    source: any;
}
