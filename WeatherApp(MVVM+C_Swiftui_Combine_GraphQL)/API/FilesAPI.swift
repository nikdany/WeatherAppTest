// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public struct ConfigInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - units
  ///   - lang
  public init(units: Swift.Optional<Unit?> = nil, lang: Swift.Optional<Language?> = nil) {
    graphQLMap = ["units": units, "lang": lang]
  }

  public var units: Swift.Optional<Unit?> {
    get {
      return graphQLMap["units"] as? Swift.Optional<Unit?> ?? Swift.Optional<Unit?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "units")
    }
  }

  public var lang: Swift.Optional<Language?> {
    get {
      return graphQLMap["lang"] as? Swift.Optional<Language?> ?? Swift.Optional<Language?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lang")
    }
  }
}

public enum Unit: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case metric
  case imperial
  case kelvin
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "metric": self = .metric
      case "imperial": self = .imperial
      case "kelvin": self = .kelvin
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .metric: return "metric"
      case .imperial: return "imperial"
      case .kelvin: return "kelvin"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: Unit, rhs: Unit) -> Bool {
    switch (lhs, rhs) {
      case (.metric, .metric): return true
      case (.imperial, .imperial): return true
      case (.kelvin, .kelvin): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [Unit] {
    return [
      .metric,
      .imperial,
      .kelvin,
    ]
  }
}

public enum Language: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case af
  case al
  case ar
  case az
  case bg
  case ca
  case cz
  case da
  case de
  case el
  case en
  case eu
  case fa
  case fi
  case fr
  case gl
  case he
  case hi
  case hr
  case hu
  case id
  case it
  case ja
  case kr
  case la
  case lt
  case mk
  case no
  case nl
  case pl
  case pt
  case ptBr
  case ro
  case ru
  case sv
  case se
  case sk
  case sl
  case sp
  case es
  case sr
  case th
  case tr
  case ua
  case uk
  case vi
  case zhCn
  case zhTw
  case zu
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "af": self = .af
      case "al": self = .al
      case "ar": self = .ar
      case "az": self = .az
      case "bg": self = .bg
      case "ca": self = .ca
      case "cz": self = .cz
      case "da": self = .da
      case "de": self = .de
      case "el": self = .el
      case "en": self = .en
      case "eu": self = .eu
      case "fa": self = .fa
      case "fi": self = .fi
      case "fr": self = .fr
      case "gl": self = .gl
      case "he": self = .he
      case "hi": self = .hi
      case "hr": self = .hr
      case "hu": self = .hu
      case "id": self = .id
      case "it": self = .it
      case "ja": self = .ja
      case "kr": self = .kr
      case "la": self = .la
      case "lt": self = .lt
      case "mk": self = .mk
      case "no": self = .no
      case "nl": self = .nl
      case "pl": self = .pl
      case "pt": self = .pt
      case "pt_br": self = .ptBr
      case "ro": self = .ro
      case "ru": self = .ru
      case "sv": self = .sv
      case "se": self = .se
      case "sk": self = .sk
      case "sl": self = .sl
      case "sp": self = .sp
      case "es": self = .es
      case "sr": self = .sr
      case "th": self = .th
      case "tr": self = .tr
      case "ua": self = .ua
      case "uk": self = .uk
      case "vi": self = .vi
      case "zh_cn": self = .zhCn
      case "zh_tw": self = .zhTw
      case "zu": self = .zu
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .af: return "af"
      case .al: return "al"
      case .ar: return "ar"
      case .az: return "az"
      case .bg: return "bg"
      case .ca: return "ca"
      case .cz: return "cz"
      case .da: return "da"
      case .de: return "de"
      case .el: return "el"
      case .en: return "en"
      case .eu: return "eu"
      case .fa: return "fa"
      case .fi: return "fi"
      case .fr: return "fr"
      case .gl: return "gl"
      case .he: return "he"
      case .hi: return "hi"
      case .hr: return "hr"
      case .hu: return "hu"
      case .id: return "id"
      case .it: return "it"
      case .ja: return "ja"
      case .kr: return "kr"
      case .la: return "la"
      case .lt: return "lt"
      case .mk: return "mk"
      case .no: return "no"
      case .nl: return "nl"
      case .pl: return "pl"
      case .pt: return "pt"
      case .ptBr: return "pt_br"
      case .ro: return "ro"
      case .ru: return "ru"
      case .sv: return "sv"
      case .se: return "se"
      case .sk: return "sk"
      case .sl: return "sl"
      case .sp: return "sp"
      case .es: return "es"
      case .sr: return "sr"
      case .th: return "th"
      case .tr: return "tr"
      case .ua: return "ua"
      case .uk: return "uk"
      case .vi: return "vi"
      case .zhCn: return "zh_cn"
      case .zhTw: return "zh_tw"
      case .zu: return "zu"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: Language, rhs: Language) -> Bool {
    switch (lhs, rhs) {
      case (.af, .af): return true
      case (.al, .al): return true
      case (.ar, .ar): return true
      case (.az, .az): return true
      case (.bg, .bg): return true
      case (.ca, .ca): return true
      case (.cz, .cz): return true
      case (.da, .da): return true
      case (.de, .de): return true
      case (.el, .el): return true
      case (.en, .en): return true
      case (.eu, .eu): return true
      case (.fa, .fa): return true
      case (.fi, .fi): return true
      case (.fr, .fr): return true
      case (.gl, .gl): return true
      case (.he, .he): return true
      case (.hi, .hi): return true
      case (.hr, .hr): return true
      case (.hu, .hu): return true
      case (.id, .id): return true
      case (.it, .it): return true
      case (.ja, .ja): return true
      case (.kr, .kr): return true
      case (.la, .la): return true
      case (.lt, .lt): return true
      case (.mk, .mk): return true
      case (.no, .no): return true
      case (.nl, .nl): return true
      case (.pl, .pl): return true
      case (.pt, .pt): return true
      case (.ptBr, .ptBr): return true
      case (.ro, .ro): return true
      case (.ru, .ru): return true
      case (.sv, .sv): return true
      case (.se, .se): return true
      case (.sk, .sk): return true
      case (.sl, .sl): return true
      case (.sp, .sp): return true
      case (.es, .es): return true
      case (.sr, .sr): return true
      case (.th, .th): return true
      case (.tr, .tr): return true
      case (.ua, .ua): return true
      case (.uk, .uk): return true
      case (.vi, .vi): return true
      case (.zhCn, .zhCn): return true
      case (.zhTw, .zhTw): return true
      case (.zu, .zu): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [Language] {
    return [
      .af,
      .al,
      .ar,
      .az,
      .bg,
      .ca,
      .cz,
      .da,
      .de,
      .el,
      .en,
      .eu,
      .fa,
      .fi,
      .fr,
      .gl,
      .he,
      .hi,
      .hr,
      .hu,
      .id,
      .it,
      .ja,
      .kr,
      .la,
      .lt,
      .mk,
      .no,
      .nl,
      .pl,
      .pt,
      .ptBr,
      .ro,
      .ru,
      .sv,
      .se,
      .sk,
      .sl,
      .sp,
      .es,
      .sr,
      .th,
      .tr,
      .ua,
      .uk,
      .vi,
      .zhCn,
      .zhTw,
      .zu,
    ]
  }
}

public final class ForecastResulQueryQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query ForecastResulQuery($name: String!, $config: ConfigInput) {
      getCityByName(name: $name, config: $config) {
        __typename
        id
        name
        country
        weather {
          __typename
          ...WeatherFragment
        }
      }
    }
    """

  public let operationName: String = "ForecastResulQuery"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + WeatherFragment.fragmentDefinition)
    return document
  }

  public var name: String
  public var config: ConfigInput?

  public init(name: String, config: ConfigInput? = nil) {
    self.name = name
    self.config = config
  }

  public var variables: GraphQLMap? {
    return ["name": name, "config": config]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("getCityByName", arguments: ["name": GraphQLVariable("name"), "config": GraphQLVariable("config")], type: .object(GetCityByName.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getCityByName: GetCityByName? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "getCityByName": getCityByName.flatMap { (value: GetCityByName) -> ResultMap in value.resultMap }])
    }

    public var getCityByName: GetCityByName? {
      get {
        return (resultMap["getCityByName"] as? ResultMap).flatMap { GetCityByName(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "getCityByName")
      }
    }

    public struct GetCityByName: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["City"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("country", type: .scalar(String.self)),
          GraphQLField("weather", type: .object(Weather.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID? = nil, name: String? = nil, country: String? = nil, weather: Weather? = nil) {
        self.init(unsafeResultMap: ["__typename": "City", "id": id, "name": name, "country": country, "weather": weather.flatMap { (value: Weather) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var country: String? {
        get {
          return resultMap["country"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "country")
        }
      }

      public var weather: Weather? {
        get {
          return (resultMap["weather"] as? ResultMap).flatMap { Weather(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "weather")
        }
      }

      public struct Weather: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Weather"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(WeatherFragment.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var weatherFragment: WeatherFragment {
            get {
              return WeatherFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public struct WeatherFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment WeatherFragment on Weather {
      __typename
      summary {
        __typename
        title
        description
        icon
      }
      temperature {
        __typename
        actual
        feelsLike
        min
        max
      }
      wind {
        __typename
        speed
        deg
      }
    }
    """

  public static let possibleTypes: [String] = ["Weather"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("summary", type: .object(Summary.selections)),
      GraphQLField("temperature", type: .object(Temperature.selections)),
      GraphQLField("wind", type: .object(Wind.selections)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(summary: Summary? = nil, temperature: Temperature? = nil, wind: Wind? = nil) {
    self.init(unsafeResultMap: ["__typename": "Weather", "summary": summary.flatMap { (value: Summary) -> ResultMap in value.resultMap }, "temperature": temperature.flatMap { (value: Temperature) -> ResultMap in value.resultMap }, "wind": wind.flatMap { (value: Wind) -> ResultMap in value.resultMap }])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var summary: Summary? {
    get {
      return (resultMap["summary"] as? ResultMap).flatMap { Summary(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "summary")
    }
  }

  public var temperature: Temperature? {
    get {
      return (resultMap["temperature"] as? ResultMap).flatMap { Temperature(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "temperature")
    }
  }

  public var wind: Wind? {
    get {
      return (resultMap["wind"] as? ResultMap).flatMap { Wind(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "wind")
    }
  }

  public struct Summary: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Summary"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("title", type: .scalar(String.self)),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("icon", type: .scalar(String.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(title: String? = nil, description: String? = nil, icon: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "Summary", "title": title, "description": description, "icon": icon])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var title: String? {
      get {
        return resultMap["title"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "title")
      }
    }

    public var description: String? {
      get {
        return resultMap["description"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "description")
      }
    }

    public var icon: String? {
      get {
        return resultMap["icon"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "icon")
      }
    }
  }

  public struct Temperature: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Temperature"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("actual", type: .scalar(Double.self)),
        GraphQLField("feelsLike", type: .scalar(Double.self)),
        GraphQLField("min", type: .scalar(Double.self)),
        GraphQLField("max", type: .scalar(Double.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(actual: Double? = nil, feelsLike: Double? = nil, min: Double? = nil, max: Double? = nil) {
      self.init(unsafeResultMap: ["__typename": "Temperature", "actual": actual, "feelsLike": feelsLike, "min": min, "max": max])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var actual: Double? {
      get {
        return resultMap["actual"] as? Double
      }
      set {
        resultMap.updateValue(newValue, forKey: "actual")
      }
    }

    public var feelsLike: Double? {
      get {
        return resultMap["feelsLike"] as? Double
      }
      set {
        resultMap.updateValue(newValue, forKey: "feelsLike")
      }
    }

    public var min: Double? {
      get {
        return resultMap["min"] as? Double
      }
      set {
        resultMap.updateValue(newValue, forKey: "min")
      }
    }

    public var max: Double? {
      get {
        return resultMap["max"] as? Double
      }
      set {
        resultMap.updateValue(newValue, forKey: "max")
      }
    }
  }

  public struct Wind: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Wind"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("speed", type: .scalar(Double.self)),
        GraphQLField("deg", type: .scalar(Int.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(speed: Double? = nil, deg: Int? = nil) {
      self.init(unsafeResultMap: ["__typename": "Wind", "speed": speed, "deg": deg])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var speed: Double? {
      get {
        return resultMap["speed"] as? Double
      }
      set {
        resultMap.updateValue(newValue, forKey: "speed")
      }
    }

    public var deg: Int? {
      get {
        return resultMap["deg"] as? Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "deg")
      }
    }
  }
}
