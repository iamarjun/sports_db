import 'package:equatable/equatable.dart';

class League extends Equatable  {
	final String idLeague;
	final String idSoccerXml;
	final String idApIfootball;
	final String strSport;
	final String strLeague;
	final String strLeagueAlternate;
	final String strDivision;
	final String idCup;
	final String strCurrentSeason;
	final String intFormedYear;
	final String dateFirstEvent;
	final String strGender;
	final String strCountry;
	final String strWebsite;
	final String strFacebook;
	final String strTwitter;
	final String strYoutube;
	final String strRss;
	final String strDescriptionEn;
	final String strDescriptionDe;
	final String strDescriptionFr;
	final String strDescriptionIt;
	final String strDescriptionCn;
	final String strDescriptionJp;
	final String strDescriptionRu;
	final String strDescriptionEs;
	final String strDescriptionPt;
	final String strDescriptionSe;
	final String strDescriptionNl;
	final String strDescriptionHu;
	final String strDescriptionNo;
	final String strDescriptionPl;
	final String strDescriptionIl;
	final String strFanart1;
	final String strFanart2;
	final String strFanart3;
	final String strFanart4;
	final String strBanner;
	final String strBadge;
	final String strLogo;
	final String strPoster;
	final String strTrophy;
	final String strNaming;
	final String strComplete;
	final String strLocked;

	League({this.idLeague, this.idSoccerXml, this.idApIfootball, this.strSport, this.strLeague, this.strLeagueAlternate, this.strDivision, this.idCup, this.strCurrentSeason, this.intFormedYear, this.dateFirstEvent, this.strGender, this.strCountry, this.strWebsite, this.strFacebook, this.strTwitter, this.strYoutube, this.strRss, this.strDescriptionEn, this.strDescriptionDe, this.strDescriptionFr, this.strDescriptionIt, this.strDescriptionCn, this.strDescriptionJp, this.strDescriptionRu, this.strDescriptionEs, this.strDescriptionPt, this.strDescriptionSe, this.strDescriptionNl, this.strDescriptionHu, this.strDescriptionNo, this.strDescriptionPl, this.strDescriptionIl, this.strFanart1, this.strFanart2, this.strFanart3, this.strFanart4, this.strBanner, this.strBadge, this.strLogo, this.strPoster, this.strTrophy, this.strNaming, this.strComplete, this.strLocked});

	factory League.fromJson(Map<String, dynamic> json) {
		return League(
			idLeague: json['idLeague'],
			idSoccerXml: json['idSoccerXML'],
			idApIfootball: json['idAPIfootball'],
			strSport: json['strSport'],
			strLeague: json['strLeague'],
			strLeagueAlternate: json['strLeagueAlternate'],
			strDivision: json['strDivision'],
			idCup: json['idCup'],
			strCurrentSeason: json['strCurrentSeason'],
			intFormedYear: json['intFormedYear'],
			dateFirstEvent: json['dateFirstEvent'],
			strGender: json['strGender'],
			strCountry: json['strCountry'],
			strWebsite: json['strWebsite'],
			strFacebook: json['strFacebook'],
			strTwitter: json['strTwitter'],
			strYoutube: json['strYoutube'],
			strRss: json['strRSS'],
			strDescriptionEn: json['strDescriptionEN'],
			strDescriptionDe: json['strDescriptionDE'],
			strDescriptionFr: json['strDescriptionFR'],
			strDescriptionIt: json['strDescriptionIT'],
			strDescriptionCn: json['strDescriptionCN'],
			strDescriptionJp: json['strDescriptionJP'],
			strDescriptionRu: json['strDescriptionRU'],
			strDescriptionEs: json['strDescriptionES'],
			strDescriptionPt: json['strDescriptionPT'],
			strDescriptionSe: json['strDescriptionSE'],
			strDescriptionNl: json['strDescriptionNL'],
			strDescriptionHu: json['strDescriptionHU'],
			strDescriptionNo: json['strDescriptionNO'],
			strDescriptionPl: json['strDescriptionPL'],
			strDescriptionIl: json['strDescriptionIL'],
			strFanart1: json['strFanart1'],
			strFanart2: json['strFanart2'],
			strFanart3: json['strFanart3'],
			strFanart4: json['strFanart4'],
			strBanner: json['strBanner'],
			strBadge: json['strBadge'],
			strLogo: json['strLogo'],
			strPoster: json['strPoster'],
			strTrophy: json['strTrophy'],
			strNaming: json['strNaming'],
			strComplete: json['strComplete'],
			strLocked: json['strLocked'],
		);
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['idLeague'] = this.idLeague;
		data['idSoccerXML'] = this.idSoccerXml;
		data['idAPIfootball'] = this.idApIfootball;
		data['strSport'] = this.strSport;
		data['strLeague'] = this.strLeague;
		data['strLeagueAlternate'] = this.strLeagueAlternate;
		data['strDivision'] = this.strDivision;
		data['idCup'] = this.idCup;
		data['strCurrentSeason'] = this.strCurrentSeason;
		data['intFormedYear'] = this.intFormedYear;
		data['dateFirstEvent'] = this.dateFirstEvent;
		data['strGender'] = this.strGender;
		data['strCountry'] = this.strCountry;
		data['strWebsite'] = this.strWebsite;
		data['strFacebook'] = this.strFacebook;
		data['strTwitter'] = this.strTwitter;
		data['strYoutube'] = this.strYoutube;
		data['strRSS'] = this.strRss;
		data['strDescriptionEN'] = this.strDescriptionEn;
		data['strDescriptionDE'] = this.strDescriptionDe;
		data['strDescriptionFR'] = this.strDescriptionFr;
		data['strDescriptionIT'] = this.strDescriptionIt;
		data['strDescriptionCN'] = this.strDescriptionCn;
		data['strDescriptionJP'] = this.strDescriptionJp;
		data['strDescriptionRU'] = this.strDescriptionRu;
		data['strDescriptionES'] = this.strDescriptionEs;
		data['strDescriptionPT'] = this.strDescriptionPt;
		data['strDescriptionSE'] = this.strDescriptionSe;
		data['strDescriptionNL'] = this.strDescriptionNl;
		data['strDescriptionHU'] = this.strDescriptionHu;
		data['strDescriptionNO'] = this.strDescriptionNo;
		data['strDescriptionPL'] = this.strDescriptionPl;
		data['strDescriptionIL'] = this.strDescriptionIl;
		data['strFanart1'] = this.strFanart1;
		data['strFanart2'] = this.strFanart2;
		data['strFanart3'] = this.strFanart3;
		data['strFanart4'] = this.strFanart4;
		data['strBanner'] = this.strBanner;
		data['strBadge'] = this.strBadge;
		data['strLogo'] = this.strLogo;
		data['strPoster'] = this.strPoster;
		data['strTrophy'] = this.strTrophy;
		data['strNaming'] = this.strNaming;
		data['strComplete'] = this.strComplete;
		data['strLocked'] = this.strLocked;
		return data;
	}

	@override
	List<Object> get props => [
		this.idLeague,
		this.idSoccerXml,
		this.idApIfootball,
		this.strSport,
		this.strLeague,
		this.strLeagueAlternate,
		this.strDivision,
		this.idCup,
		this.strCurrentSeason,
		this.intFormedYear,
		this.dateFirstEvent,
		this.strGender,
		this.strCountry,
		this.strWebsite,
		this.strFacebook,
		this.strTwitter,
		this.strYoutube,
		this.strRss,
		this.strDescriptionEn,
		this.strDescriptionDe,
		this.strDescriptionFr,
		this.strDescriptionIt,
		this.strDescriptionCn,
		this.strDescriptionJp,
		this.strDescriptionRu,
		this.strDescriptionEs,
		this.strDescriptionPt,
		this.strDescriptionSe,
		this.strDescriptionNl,
		this.strDescriptionHu,
		this.strDescriptionNo,
		this.strDescriptionPl,
		this.strDescriptionIl,
		this.strFanart1,
		this.strFanart2,
		this.strFanart3,
		this.strFanart4,
		this.strBanner,
		this.strBadge,
		this.strLogo,
		this.strPoster,
		this.strTrophy,
		this.strNaming,
		this.strComplete,
		this.strLocked
	];
}
