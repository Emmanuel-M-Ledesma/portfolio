<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Programacion3._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .jumbotron {
            width: 75%;
            margin-left: auto;
            margin-right: auto;
            align-items: center;
            background-image: url("img/dragon-scales.png");
        }

        .parallax {
            height: 100%;
            min-height: 500px;
            background-attachment: fixed;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }


        .name1 {
            text-align: center;
            position: relative;
        }

        body {
            display: grid;
            grid-template-rows: 1fr 10rem auto;
            grid-template-areas: "main" "." "footer";
            overflow-x: hidden;
            background: #F5F7FA;
            min-height: 100vh;
            font-family: 'Ubuntu', sans-serif;
        }

            body .footer {
                z-index: 1;
                --footer-background: #7524f2;
                display: grid;
                position: relative;
                grid-area: footer;
                min-height: 12rem;
            }

                body .footer .bbl {
                    position: absolute;
                    top: 0;
                    left: 0;
                    right: 0;
                    height: 1rem;
                    background: var(--footer-background);
                    filter: url("#blob");
                }

                    body .footer .bbl .bubble {
                        position: absolute;
                        left: var(--position, 50%);
                        background: var(--footer-background);
                        border-radius: 100%;
                        -webkit-animation: bubble-size var(--time, 4s) ease-in infinite var(--delay, 0s), bubble-move var(--time, 4s) ease-in infinite var(--delay, 0s);
                        animation: bubble-size var(--time, 4s) ease-in infinite var(--delay, 0s), bubble-move var(--time, 4s) ease-in infinite var(--delay, 0s);
                        transform: translate(-50%, 100%);
                    }

                body .footer .content {
                    z-index: 2;
                    display: grid;
                    grid-template-columns: 1fr auto;
                    grid-gap: 4rem;
                    padding: 2rem;
                    background: var(--footer-background);
                }

                    body .footer .content a, body .footer .content p {
                        color: #F5F7FA;
                        text-decoration: none;
                    }

                    body .footer .content b {
                        color: white;
                    }

                    body .footer .content p {
                        margin: 0;
                        font-size: 0.75rem;
                    }

                    body .footer .content > div {
                        display: flex;
                        flex-direction: column;
                        justify-content: center;
                    }

                        body .footer .content > div > div {
                            margin: 0.25rem 0;
                        }

                            body .footer .content > div > div > * {
                                margin-right: 0.5rem;
                            }

                        body .footer .content > div .image {
                            align-self: center;
                            width: 4rem;
                            height: 4rem;
                            margin: 0.25rem 0;
                            background-size: cover;
                            background-position: center;
                        }

        @-webkit-keyframes bubble-size {
            0%, 75% {
                width: var(--size, 4rem);
                height: var(--size, 4rem);
            }

            100% {
                width: 0rem;
                height: 0rem;
            }
        }

        @keyframes bubble-size {
            0%, 75% {
                width: var(--size, 4rem);
                height: var(--size, 4rem);
            }

            100% {
                width: 0rem;
                height: 0rem;
            }
        }

        @-webkit-keyframes bubble-move {
            0% {
                bottom: -4rem;
            }

            100% {
                bottom: var(--distance, 10rem);
            }
        }

        @keyframes bubble-move {
            0% {
                bottom: -4rem;
            }

            100% {
                bottom: var(--distance, 10rem);
            }
        }

       
        .cards-list {
            position: relative;
            z-index: 0;
            width: 100%;
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }

        .card {
            margin: 30px auto;
            position: center;
            width: 300px;
            height: 300px;
            border-radius: 40px;
            box-shadow: 5px 5px 30px 7px rgba(0,0,0,0.25), -5px -5px 30px 7px rgba(0,0,0,0.22);
            cursor: pointer;
            transition: 0.4s;
        }


            .card .card_image {
                width: inherit;
                height: inherit;
                border-radius: 40px;
            }

                .card .card_image img {
                    width: inherit;
                    height: inherit;
                    border-radius: 40px;
                    object-fit: cover;
                }

            .card .card_title {
                text-align: center;
                border-radius: 0px 0px 20px 20px;
                font-family: 'Ubuntu', sans-serif;
                font-weight: bold;
                font-size: 60px;
                margin-top: -40px;
                height: 30px;
            }

            .card:hover {
                transform: scale(0.9, 0.9);
                box-shadow: 5px 5px 30px 15px rgba(0,0,0,0.25), -5px -5px 30px 15px rgba(0,0,0,0.22);
            }

        .title-white {
            color: white;
        }

        .title-black {
            color: black;
        }

        @media all and (max-width: 100px) {
            .card-list {
                flex-direction: row;
            }
        }

        .escala {
            margin-left: auto;
            margin-right: auto;
        }
    </style>

    <div class="jumbotron name1">
        <h1>Emmanuel Ledesma</h1>
        <p class="lead">Programador full stack .NET</p>
        <br />
        <br />
        <img src="https://mattfarley.ca/img/mf-avatar.svg" alt="foto" />
    </div>
    <div>
        <div class="main"></div>
        <div class="footer">
            <div class="bbl">
                <div class="bubble" style="--size: 2.0403121614633815rem; --distance: 7.718125435600712rem; --position: 50.1807752504913%; --time: 3.068566893550462s; --delay: -2.0997788947168687s;"></div>
                <div class="bubble" style="--size: 3.607527201782233rem; --distance: 9.56569103582138rem; --position: 35.583117353675654%; --time: 3.1217721009761803s; --delay: -3.8480470752408875s;"></div>
                <div class="bubble" style="--size: 3.636094591922406rem; --distance: 7.8019318420816575rem; --position: 28.590085132680223%; --time: 3.3722828802144247s; --delay: -2.120704635024207s;"></div>
                <div class="bubble" style="--size: 2.1153915668186256rem; --distance: 8.79291998349515rem; --position: 95.95339666611116%; --time: 3.3231675485753867s; --delay: -3.564252744977945s;"></div>
                <div class="bubble" style="--size: 5.097348048105267rem; --distance: 9.794574731683172rem; --position: 7.926530654355959%; --time: 3.7415185441688217s; --delay: -2.086785267939716s;"></div>
                <div class="bubble" style="--size: 2.8804392473004103rem; --distance: 9.94747439004756rem; --position: 104.65835639214026%; --time: 3.6235465521722503s; --delay: -2.462797414368676s;"></div>
                <div class="bubble" style="--size: 5.059353931113139rem; --distance: 8.394156161296477rem; --position: 57.0508691144994%; --time: 3.1375221244935987s; --delay: -2.9519747422631686s;"></div>
                <div class="bubble" style="--size: 2.891757878146744rem; --distance: 7.327301539905507rem; --position: 63.895958470436966%; --time: 3.2090774610660597s; --delay: -2.8607254817384913s;"></div>
                <div class="bubble" style="--size: 2.1982035492577525rem; --distance: 7.6911196982865135rem; --position: 17.93276510999744%; --time: 2.3864971176852072s; --delay: -3.0571252139405285s;"></div>
                <div class="bubble" style="--size: 4.415359580207413rem; --distance: 8.830633001312684rem; --position: 38.93871090327554%; --time: 2.7744485589564225s; --delay: -2.9151359649983664s;"></div>
                <div class="bubble" style="--size: 3.12172428105493rem; --distance: 9.54795018205904rem; --position: 10.669031773806768%; --time: 2.1225115738665257s; --delay: -2.6639617673554525s;"></div>
                <div class="bubble" style="--size: 5.67389330352295rem; --distance: 9.102506386716719rem; --position: 94.03659314864623%; --time: 2.001573831544297s; --delay: -2.509799159185771s;"></div>
                <div class="bubble" style="--size: 4.88051937736436rem; --distance: 6.617801603985061rem; --position: 60.58319249131499%; --time: 3.6467612813067496s; --delay: -3.0423976918872353s;"></div>
                <div class="bubble" style="--size: 2.1365072114347194rem; --distance: 8.377724688479358rem; --position: 11.036212217784481%; --time: 3.781204550062928s; --delay: -3.7251308211048486s;"></div>
                <div class="bubble" style="--size: 2.3364091377407776rem; --distance: 9.696331820183463rem; --position: 79.97626616207741%; --time: 3.033517998736541s; --delay: -3.6684066243741555s;"></div>
                <div class="bubble" style="--size: 2.9055397067021556rem; --distance: 9.690112591377265rem; --position: 49.24071238774263%; --time: 3.796315066503676s; --delay: -2.905143477073462s;"></div>
                <div class="bubble" style="--size: 5.4115520946256375rem; --distance: 6.183470551279611rem; --position: 65.17372599828644%; --time: 3.008654395082028s; --delay: -3.621691686887664s;"></div>
                <div class="bubble" style="--size: 3.4328771033061916rem; --distance: 8.235055020404495rem; --position: 9.154404995184027%; --time: 2.057588972749947s; --delay: -2.2721855691382498s;"></div>
                <div class="bubble" style="--size: 4.985098649763149rem; --distance: 9.536689518983195rem; --position: 71.91836266524331%; --time: 3.813555413366612s; --delay: -2.356382003744726s;"></div>
                <div class="bubble" style="--size: 3.4688118020865337rem; --distance: 9.845166455109478rem; --position: 7.188169654588785%; --time: 3.1903914083541682s; --delay: -3.383098651694606s;"></div>
                <div class="bubble" style="--size: 2.658570772864892rem; --distance: 9.405439978214913rem; --position: 64.36741775851783%; --time: 2.639639892858754s; --delay: -3.359946577470083s;"></div>
                <div class="bubble" style="--size: 4.2974946140847115rem; --distance: 7.02315067572494rem; --position: 27.663365374495193%; --time: 2.9446061752666637s; --delay: -2.8653901463036253s;"></div>
                <div class="bubble" style="--size: 2.332440859488921rem; --distance: 7.202316387449659rem; --position: 0.7999856991674186%; --time: 3.884822294860859s; --delay: -2.7788471277431315s;"></div>
                <div class="bubble" style="--size: 2.5902508333563876rem; --distance: 7.9956580285149546rem; --position: 52.54269195436738%; --time: 2.9332887056671644s; --delay: -3.8139453182949374s;"></div>
                <div class="bubble" style="--size: 2.9365738121105647rem; --distance: 6.360206016939488rem; --position: 67.43296943971391%; --time: 2.458442573616628s; --delay: -2.5236949484829934s;"></div>
                <div class="bubble" style="--size: 4.6063918460382585rem; --distance: 6.356766199825961rem; --position: 103.54232107087317%; --time: 2.8071166398045686s; --delay: -3.935183864437088s;"></div>
                <div class="bubble" style="--size: 3.248187003842765rem; --distance: 6.615682421611222rem; --position: 16.97896353912449%; --time: 3.510660608403271s; --delay: -2.4383688069360026s;"></div>
                <div class="bubble" style="--size: 4.367200517851467rem; --distance: 9.51361003380515rem; --position: 36.25554800512396%; --time: 3.959997290966416s; --delay: -2.4178406443461253s;"></div>
                <div class="bubble" style="--size: 2.8831496073334932rem; --distance: 9.342990800838434rem; --position: 25.98013890802005%; --time: 2.7560987446247776s; --delay: -3.928505627467096s;"></div>
                <div class="bubble" style="--size: 4.631957170430867rem; --distance: 6.7372748582207675rem; --position: 104.41454916202343%; --time: 2.8008155143389715s; --delay: -2.3570231698124497s;"></div>
                <div class="bubble" style="--size: 2.9608394919028305rem; --distance: 8.99113735488415rem; --position: 4.828964941648259%; --time: 3.391706253933458s; --delay: -3.953291743039272s;"></div>
                <div class="bubble" style="--size: 2.749908640695037rem; --distance: 9.405025504648979rem; --position: 4.292620163371177%; --time: 2.8683630557981803s; --delay: -3.325617986888552s;"></div>
                <div class="bubble" style="--size: 2.3667501545563185rem; --distance: 6.510545548936202rem; --position: 36.5683886480653%; --time: 2.233350364313924s; --delay: -3.837380072380818s;"></div>
                <div class="bubble" style="--size: 2.891499429933938rem; --distance: 9.696684000482714rem; --position: 11.785178686705983%; --time: 3.991326143403373s; --delay: -2.6090496964996017s;"></div>
                <div class="bubble" style="--size: 5.436840729584049rem; --distance: 6.216381363287836rem; --position: 10.452541785211197%; --time: 3.323109991342261s; --delay: -2.3027896102738445s;"></div>
                <div class="bubble" style="--size: 5.610432342709409rem; --distance: 8.236421255289194rem; --position: 57.212423918480404%; --time: 3.154956471397151s; --delay: -2.0348677704245017s;"></div>
                <div class="bubble" style="--size: 4.053100147798571rem; --distance: 8.76020012740764rem; --position: 91.9473219384406%; --time: 3.5722986687662845s; --delay: -2.0265036036509314s;"></div>
                <div class="bubble" style="--size: 4.723968692942683rem; --distance: 6.946126732487557rem; --position: 37.64842436465127%; --time: 2.70494700034003s; --delay: -3.169837397318419s;"></div>
                <div class="bubble" style="--size: 2.8861536815553945rem; --distance: 7.140039872361568rem; --position: 27.648332794489086%; --time: 2.5620001003944513s; --delay: -2.6478272368870015s;"></div>
                <div class="bubble" style="--size: 2.4094281480031077rem; --distance: 7.490131421992569rem; --position: 30.36266087850222%; --time: 2.3341238274639204s; --delay: -2.2487690062236574s;"></div>
                <div class="bubble" style="--size: 2.477815232295277rem; --distance: 6.24256899724012rem; --position: 55.895176806234%; --time: 2.160770556577023s; --delay: -2.622905215797959s;"></div>
                <div class="bubble" style="--size: 5.685664029433507rem; --distance: 8.989341309379508rem; --position: 36.95912871502089%; --time: 3.332521785426704s; --delay: -2.709128515746472s;"></div>
                <div class="bubble" style="--size: 4.0661976121502645rem; --distance: 8.49670422300011rem; --position: 55.23965659345311%; --time: 2.196890841034479s; --delay: -2.2117217910561155s;"></div>
                <div class="bubble" style="--size: 2.2771020300424487rem; --distance: 7.583898276055455rem; --position: 0.6660511894773524%; --time: 2.6357532079028427s; --delay: -3.012412039422984s;"></div>
                <div class="bubble" style="--size: 4.039690648182193rem; --distance: 9.446391998887151rem; --position: 55.725129936557956%; --time: 3.6223055407349403s; --delay: -3.3234944153709023s;"></div>
                <div class="bubble" style="--size: 4.753097934626681rem; --distance: 6.1398978562690685rem; --position: 77.21496263153544%; --time: 2.883161491398089s; --delay: -3.2898272082826505s;"></div>
                <div class="bubble" style="--size: 5.678760646630366rem; --distance: 9.604032830811802rem; --position: 82.51949134784488%; --time: 3.229127332869681s; --delay: -2.6181490662462394s;"></div>
                <div class="bubble" style="--size: 2.690952298140007rem; --distance: 7.230068291757903rem; --position: 24.878376337675824%; --time: 3.841478318456273s; --delay: -2.1920253547484627s;"></div>
                <div class="bubble" style="--size: 3.5227249010198447rem; --distance: 9.023912296454961rem; --position: 50.983517756688585%; --time: 3.736580041725827s; --delay: -2.0562554255119774s;"></div>
                <div class="bubble" style="--size: 3.7779401106711354rem; --distance: 7.63836437114812rem; --position: 19.513576484070178%; --time: 2.7080907928351583s; --delay: -2.729610024769214s;"></div>
                <div class="bubble" style="--size: 2.7491474900411896rem; --distance: 8.203824042536285rem; --position: 34.259823235647744%; --time: 2.195119096595486s; --delay: -3.327553013610674s;"></div>
                <div class="bubble" style="--size: 4.067404369393742rem; --distance: 7.68772805062104rem; --position: 54.5499613810329%; --time: 3.575973316257566s; --delay: -2.500925543899075s;"></div>
                <div class="bubble" style="--size: 5.26951424888711rem; --distance: 9.554428790422405rem; --position: 49.82562581231746%; --time: 2.067864000993538s; --delay: -3.768530031116176s;"></div>
                <div class="bubble" style="--size: 3.7106926581727144rem; --distance: 9.235286832164864rem; --position: 26.099300453960726%; --time: 3.4712110117487s; --delay: -2.379272644163309s;"></div>
                <div class="bubble" style="--size: 4.960970970543257rem; --distance: 7.047157194526018rem; --position: 26.83662981888867%; --time: 3.002847322548312s; --delay: -2.289117320714647s;"></div>
                <div class="bubble" style="--size: 4.613678459269704rem; --distance: 8.800229641506993rem; --position: 36.878303323243564%; --time: 2.5891639228555405s; --delay: -2.951397735482237s;"></div>
                <div class="bubble" style="--size: 5.385189492315221rem; --distance: 7.482638834992316rem; --position: 57.56183508064134%; --time: 2.016263437858325s; --delay: -2.0589496083784886s;"></div>
                <div class="bubble" style="--size: 3.9868852993704573rem; --distance: 6.646952304560704rem; --position: 91.55709011792372%; --time: 2.7035342639876805s; --delay: -3.207822114353508s;"></div>
                <div class="bubble" style="--size: 2.8814940322083364rem; --distance: 8.164218501081011rem; --position: 94.2159075880228%; --time: 3.062867138919376s; --delay: -2.6402807823597s;"></div>
                <div class="bubble" style="--size: 4.3659144911505265rem; --distance: 8.643954961862201rem; --position: 93.9358857705665%; --time: 2.7843876286071167s; --delay: -2.731470077787624s;"></div>
                <div class="bubble" style="--size: 2.254866200569986rem; --distance: 8.456128986307839rem; --position: 95.88536674566411%; --time: 2.0354534270631217s; --delay: -2.5175227341180504s;"></div>
                <div class="bubble" style="--size: 3.7489081199286325rem; --distance: 7.425047619063635rem; --position: 81.2064872374891%; --time: 2.399929434654292s; --delay: -3.20982179166344s;"></div>
                <div class="bubble" style="--size: 2.3291329089207737rem; --distance: 6.51842340622116rem; --position: 45.29755568688995%; --time: 3.82162874660771s; --delay: -2.966642833896033s;"></div>
                <div class="bubble" style="--size: 3.5784120402906874rem; --distance: 7.324381490215442rem; --position: 7.595597405244373%; --time: 3.044721316705727s; --delay: -2.496435321293274s;"></div>
                <div class="bubble" style="--size: 5.503411460710749rem; --distance: 9.473483566087115rem; --position: 7.629166256182291%; --time: 3.4052158454134256s; --delay: -2.3621064432807204s;"></div>
                <div class="bubble" style="--size: 5.55347084798097rem; --distance: 6.638324351360742rem; --position: 100.2774672372157%; --time: 2.546490334131293s; --delay: -2.0412205957979475s;"></div>
                <div class="bubble" style="--size: 5.955683584529466rem; --distance: 8.880229592749362rem; --position: 51.759239804545274%; --time: 3.656001552686417s; --delay: -3.830886779082233s;"></div>
                <div class="bubble" style="--size: 5.992004764853668rem; --distance: 9.583598108022663rem; --position: 99.82385640945013%; --time: 2.7231610512719695s; --delay: -3.0897021630067436s;"></div>
                <div class="bubble" style="--size: 3.2144163145222313rem; --distance: 8.919142477337884rem; --position: 95.72093873991338%; --time: 2.6398401272706256s; --delay: -2.3273075990312972s;"></div>
                <div class="bubble" style="--size: 2.4739434241079685rem; --distance: 6.653661307687231rem; --position: 46.39779061664732%; --time: 2.0689721914111936s; --delay: -3.507481038326076s;"></div>
                <div class="bubble" style="--size: 4.786601771534976rem; --distance: 9.328084778723785rem; --position: -4.527453833182542%; --time: 2.371291393766292s; --delay: -2.3831091221304384s;"></div>
                <div class="bubble" style="--size: 4.845019177730302rem; --distance: 6.945328108249263rem; --position: 43.35733621994352%; --time: 2.8482191866223565s; --delay: -3.0895894984123022s;"></div>
                <div class="bubble" style="--size: 5.467465032003724rem; --distance: 6.555847386003358rem; --position: 36.552001026905586%; --time: 2.8131089612842293s; --delay: -3.3528350941257714s;"></div>
                <div class="bubble" style="--size: 3.7505453623801586rem; --distance: 8.329399243388771rem; --position: 3.7870745350749893%; --time: 2.934047213673099s; --delay: -3.8096963207714065s;"></div>
                <div class="bubble" style="--size: 4.889264182675293rem; --distance: 7.852560121317836rem; --position: 75.98757612587102%; --time: 3.826116833213343s; --delay: -2.3571826149595343s;"></div>
                <div class="bubble" style="--size: 3.076014758750424rem; --distance: 9.295502058324477rem; --position: 94.9294417401262%; --time: 2.8010002048634446s; --delay: -3.880528567949677s;"></div>
                <div class="bubble" style="--size: 3.2508243438773805rem; --distance: 8.739604502780569rem; --position: 47.494003455745144%; --time: 2.0519468373133245s; --delay: -3.543493204858714s;"></div>
                <div class="bubble" style="--size: 4.568714334299775rem; --distance: 6.786123431717663rem; --position: 59.01480927581089%; --time: 2.9896378145536517s; --delay: -2.429750410217213s;"></div>
                <div class="bubble" style="--size: 4.17099889277444rem; --distance: 7.923135074780723rem; --position: 61.7898185011736%; --time: 3.0746222528751614s; --delay: -3.610038486224381s;"></div>
                <div class="bubble" style="--size: 4.089970950697166rem; --distance: 9.678521455697839rem; --position: 16.507734037057823%; --time: 3.0269330386796858s; --delay: -2.809014520560385s;"></div>
                <div class="bubble" style="--size: 3.2687109518864776rem; --distance: 6.510063212566752rem; --position: 104.18327590057179%; --time: 3.38186989572197s; --delay: -3.4263555932939678s;"></div>
                <div class="bubble" style="--size: 5.847741097580577rem; --distance: 8.438553267644807rem; --position: 4.366402010035147%; --time: 3.172740965853131s; --delay: -3.4676828906430823s;"></div>
                <div class="bubble" style="--size: 4.621548432900839rem; --distance: 9.545378683113505rem; --position: 38.58699129642133%; --time: 2.969346757530326s; --delay: -3.3660735410836713s;"></div>
                <div class="bubble" style="--size: 5.137545157260828rem; --distance: 7.937047537287536rem; --position: 74.59785274463923%; --time: 3.010044637656959s; --delay: -2.242183244350837s;"></div>
                <div class="bubble" style="--size: 4.457747941815144rem; --distance: 9.613365361388887rem; --position: 70.30898709852194%; --time: 3.7480393869236135s; --delay: -3.2398965193740006s;"></div>
                <div class="bubble" style="--size: 2.8618824298180447rem; --distance: 8.767503307225859rem; --position: 100.8386669514672%; --time: 3.7607294675606227s; --delay: -3.3619777498318992s;"></div>
                <div class="bubble" style="--size: 4.695469326400891rem; --distance: 9.287173183102434rem; --position: 16.56486666192925%; --time: 3.37649424420115s; --delay: -2.445227081779882s;"></div>
                <div class="bubble" style="--size: 2.8734287008101305rem; --distance: 9.771373745558618rem; --position: 79.15524391093122%; --time: 3.072151835747177s; --delay: -3.2335881805065227s;"></div>
                <div class="bubble" style="--size: 3.9002377638173096rem; --distance: 8.646208429943776rem; --position: 54.39133275729247%; --time: 3.456012868546346s; --delay: -3.4596380095011416s;"></div>
                <div class="bubble" style="--size: 2.4781294429150886rem; --distance: 8.148944939987055rem; --position: 25.5395828939233%; --time: 2.4748976103280036s; --delay: -3.82483186042996s;"></div>
                <div class="bubble" style="--size: 5.854798860673613rem; --distance: 8.393245946702784rem; --position: 54.921394391605354%; --time: 3.1485871089173085s; --delay: -3.0199170429722684s;"></div>
                <div class="bubble" style="--size: 5.2745642425811825rem; --distance: 9.695586084581105rem; --position: 29.340846468237103%; --time: 3.6988223736282007s; --delay: -2.8928277239347526s;"></div>
                <div class="bubble" style="--size: 4.17594057410244rem; --distance: 7.406170191159515rem; --position: 51.481001991111555%; --time: 3.853814892257232s; --delay: -2.3745563642981637s;"></div>
                <div class="bubble" style="--size: 5.1172800161393095rem; --distance: 8.188316055557841rem; --position: 18.580943810392675%; --time: 2.8276392995469295s; --delay: -2.460028981742994s;"></div>
                <div class="bubble" style="--size: 4.797297895106884rem; --distance: 8.0059375940317rem; --position: 101.8435749471368%; --time: 3.8875058976692967s; --delay: -3.793198805976146s;"></div>
                <div class="bubble" style="--size: 5.444671527331349rem; --distance: 6.805641193854472rem; --position: 60.38297551721617%; --time: 2.3488820856951236s; --delay: -3.6773858985001397s;"></div>
                <div class="bubble" style="--size: 3.2340906651776775rem; --distance: 7.540637960353718rem; --position: 79.07702362927121%; --time: 3.7934876127512784s; --delay: -3.9404279872739747s;"></div>
                <div class="bubble" style="--size: 4.230058467886715rem; --distance: 6.911286020098922rem; --position: 12.2979196688127%; --time: 2.9288342939372627s; --delay: -2.1921497045466394s;"></div>
                <div class="bubble" style="--size: 4.076648195475532rem; --distance: 7.440531612013409rem; --position: 46.371452253255384%; --time: 2.316696408401428s; --delay: -2.051237428129559s;"></div>
                <div class="bubble" style="--size: 4.241590323751124rem; --distance: 9.697002122900354rem; --position: 63.74950150390198%; --time: 3.642328174158761s; --delay: -3.7869350104086155s;"></div>
                <div class="bubble" style="--size: 4.230420932542361rem; --distance: 7.970799483627137rem; --position: 72.93057441427638%; --time: 3.9544690114576797s; --delay: -3.6943065148615553s;"></div>
                <div class="bubble" style="--size: 3.7555953611790365rem; --distance: 7.86304992385534rem; --position: 93.3267602728847%; --time: 3.611210672028634s; --delay: -2.231108001890026s;"></div>
                <div class="bubble" style="--size: 2.3540634010006594rem; --distance: 6.661254945080549rem; --position: 33.141078122218616%; --time: 3.2280080167061844s; --delay: -3.01890999779916s;"></div>
                <div class="bubble" style="--size: 5.2133506888312535rem; --distance: 7.029793288821818rem; --position: 36.50909921704762%; --time: 2.3005717913800794s; --delay: -3.1118765232053525s;"></div>
                <div class="bubble" style="--size: 4.028303224413058rem; --distance: 9.979591818874896rem; --position: 18.626194189268894%; --time: 3.1579612162526285s; --delay: -2.059673940206837s;"></div>
                <div class="bubble" style="--size: 5.752665705400971rem; --distance: 9.266197276314934rem; --position: 75.53028777764084%; --time: 3.2518631912467404s; --delay: -2.663767650378499s;"></div>
                <div class="bubble" style="--size: 3.71383552512527rem; --distance: 8.794795773027488rem; --position: 86.53548890288546%; --time: 2.538304600158321s; --delay: -3.0083475270722113s;"></div>
                <div class="bubble" style="--size: 4.153366707541924rem; --distance: 7.62780350618869rem; --position: 102.57994078110342%; --time: 3.5640529042626845s; --delay: -3.5703339534098353s;"></div>
                <div class="bubble" style="--size: 3.851848825280314rem; --distance: 8.729827436044697rem; --position: 47.571581576455124%; --time: 2.360922093381603s; --delay: -2.582095174969065s;"></div>
                <div class="bubble" style="--size: 3.2965923366993453rem; --distance: 7.117555797094688rem; --position: 70.67371023418367%; --time: 3.508606961468082s; --delay: -2.2005527994352185s;"></div>
                <div class="bubble" style="--size: 2.0258411636365086rem; --distance: 6.332908178232329rem; --position: 9.749097051071697%; --time: 2.9361398823605986s; --delay: -3.774353674258227s;"></div>
                <div class="bubble" style="--size: 3.3081149001738543rem; --distance: 8.67184023996437rem; --position: 75.04822239994557%; --time: 2.594943848042909s; --delay: -2.382897801169414s;"></div>
                <div class="bubble" style="--size: 3.207797617487068rem; --distance: 8.343418556650533rem; --position: 48.60244875957502%; --time: 3.4529455460129626s; --delay: -2.3514237196589347s;"></div>
                <div class="bubble" style="--size: 3.9021463035452406rem; --distance: 8.198675561583599rem; --position: 4.727290609200548%; --time: 2.4952549090976417s; --delay: -3.0153197424451603s;"></div>
                <div class="bubble" style="--size: 2.994033577030576rem; --distance: 7.263786760235197rem; --position: 16.736005586829606%; --time: 2.654615210130319s; --delay: -2.4425037745250338s;"></div>
                <div class="bubble" style="--size: 4.1812667268128125rem; --distance: 8.702653944042849rem; --position: -0.8384621008849251%; --time: 2.4554442457037444s; --delay: -3.031562976477203s;"></div>
                <div class="bubble" style="--size: 2.0126799318122197rem; --distance: 8.504879065864209rem; --position: 98.1146929001998%; --time: 3.6420304469950544s; --delay: -3.6273817844694816s;"></div>
                <div class="bubble" style="--size: 4.554248633043475rem; --distance: 9.755913979068968rem; --position: 42.283579855241044%; --time: 2.010946660348671s; --delay: -2.2124336849562964s;"></div>
                <div class="bubble" style="--size: 5.063109812081315rem; --distance: 9.99100500406498rem; --position: 86.66270999421572%; --time: 3.3783782965656357s; --delay: -2.3879774404532403s;"></div>
                <div class="bubble" style="--size: 2.660999140775008rem; --distance: 7.451858652870116rem; --position: 82.38982934314468%; --time: 2.468030374854228s; --delay: -2.101542231124818s;"></div>
                <div class="bubble" style="--size: 4.15358817346914rem; --distance: 6.459606454251258rem; --position: 55.527349767526275%; --time: 2.792159308512397s; --delay: -2.79295028446154s;"></div>
                <div class="bubble" style="--size: 4.605232549178187rem; --distance: 7.262194430491454rem; --position: 20.45087792808824%; --time: 3.505850713013872s; --delay: -3.4654312730695227s;"></div>
                <div class="bubble" style="--size: 3.302305773745963rem; --distance: 9.55738260486324rem; --position: 93.86311499233764%; --time: 2.885102619373252s; --delay: -2.454046172328939s;"></div>
                <div class="bubble" style="--size: 3.3159366239364703rem; --distance: 8.76844781457049rem; --position: 53.36980252676402%; --time: 2.522756923049155s; --delay: -2.815847558274242s;"></div>
                <div class="bubble" style="--size: 4.056285219486987rem; --distance: 8.09696408689527rem; --position: 50.622232805291446%; --time: 3.605680416108779s; --delay: -3.335139012028479s;"></div>
                <div class="bubble" style="--size: 5.622977019737469rem; --distance: 6.055622247429509rem; --position: 69.68771118912062%; --time: 3.510336740917947s; --delay: -3.987465518433298s;"></div>
                <div class="bubble" style="--size: 5.3032016387463585rem; --distance: 6.532762555596387rem; --position: 3.399295510956616%; --time: 2.495085968439739s; --delay: -2.656983011208656s;"></div>
                <div class="bubble" style="--size: 5.6082837836062325rem; --distance: 8.429913121202418rem; --position: 89.15689485764817%; --time: 3.2364637543472092s; --delay: -3.67908515365308s;"></div>
            </div>
            <div class="content">
                <div>
                    <br />
                    <br />
                    <br />
                    <br />
                    <div class="row">
                        <div class="col-sm-2"></div>
                        <div class="name1 title-white escala col-sm-8" style="height: 70%;">
                            <h1 class="name1">Buenas!</h1>
                            <h4>Sobre mi? Soy estudiante de la tecnicatura en desarrollo de software en Instituto tecnico superior Córdoba.
                            Actualmente estoy cursando el tercer año de la tecnicatura.                            
                            Este es un proyecto realizado para la asignatura Programacion III.</h4>
                            <h4>Se supone que esto iba a ser un portfolio pero creo que no entendi bien 
                            la consigna y como no asisti a clase salio esto a las apuradas jeje
                            Como no sabia que mas hacer voy a dejar unos botones que llevan a las redes 
                            de mi perfil "profesional", y para simular que me esforce les aplique un poco de css
                            para que parezca un poco mas profesional. (obviamente con la ayuda de una herramienta misteriosa)
                            </h4>
                        </div>
                        <div class="col-sm-2"></div>
                    </div>


                    <br />
                    <br />
                    <br />
                    <br />
                    <div class="cards-list">


                        <div class="card">
                            <a href="https://github.com/Emmanuel-M-Ledesma" class="card">
                                <div class="card_image">
                                    <img src="https://media0.giphy.com/media/du3J3cXyzhj75IOgvA/giphy.gif?cid=790b7611e9777209c919988a8ceee97c51852384f1abe2f3&rid=giphy.gif&ct=g" />
                                </div>
                            </a>
                            <div class="card_title title-black">
                                <h4 class="color">GitHub</h4>
                            </div>
                        </div>
                        <div class="card">
                            <a href="https://www.linkedin.com/in/emmanuel-m-ledesma/" class="card">
                                <div class="card_image">
                                    <img src="https://blog.academyoflearning.com/wp-content/uploads/2017/09/linkedin-gif.gif" />
                                </div>
                            </a>
                            <div class="card_title">
                                <h4 class="color">LinkedIn</h4>
                            </div>
                        </div>
                        <div class="card">
                            <a href="https://www.institutotecnicocordoba.com/" class="card">
                                <div class="card_image">
                                    <img src="https://1.bp.blogspot.com/-b7-9FC6HtKM/UOtf1rNoa9I/AAAAAAAAAGA/eHy9JzMkYs4/s1600/4688369886_7226f34314_b.jpg" />

                                </div>
                            </a>
                            <div class="card_title title-white">
                                <h4 class="color">ITSC</h4>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <svg style="position: fixed; top: 100vh">
        <defs>
            <filter id="blob">
                <feGaussianBlur in="SourceGraphic" stdDeviation="10" result="blur"></feGaussianBlur>
                <feColorMatrix in="blur" mode="matrix" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 19 -9" result="blob"></feColorMatrix>
                <!--feComposite(in="SourceGraphic" in2="blob" operator="atop") //After reviewing this after years I can't remember why I added this but it isn't necessary for the blob effect-->
            </filter>
        </defs>
    </svg>



</asp:Content>
