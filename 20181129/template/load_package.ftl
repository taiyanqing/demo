<html>
<head>
  <style type="text/css">
  	body {
            font-family: "Microsoft YaHei";
        }
    .box {
      font-size: 13px;
    }
    .box .current {
      font-weight: bold;
    }
    .box .red {
      color: red;
    }
    .box h1 {
      text-align: center;
    }
    .box table {
      width: 600px;
    }
    .box .float {
      float: left;
    }
    .box .left-box {
      width: 50%;
    }
  </style>
</head>
<body>
  <div class="box">
    <h1>进阶版保值“焕新”协议</h1>
    <p class="current">经销商【以下简称甲方】：</p>
    <p class="current">${dealerName!}</p>
    <p class="current">贷款购车客户【以下简称乙方】：${ownerName}</p>
    <p class="current">贷款购车客户身份证号：${certificateNo}</p>
    <p>鉴于：</p>
    <p>1、	乙方就向上汽通用汽车金融有限责任公司 “金融公司”申请贷款购买甲方销售的汽车事宜，已与金融公司签署《汽车贷款合同》、《汽车抵押合同》及相关附件合称“贷款合同”；</p>
    <p>2、	乙方拟以自行支付的人民币${downPayment!}元“购车首付款”及金融公司发放的贷款本金人民币${downPayment!}元向甲方购买汽车“贷款车辆”，总价为人民币${totalPrice!}元；</p>
    <p>3、	为降低乙方未来承担的“贷款车辆”贬值风险，甲方同意在约定期限内，指定单位或个人以承诺的回购价格购买“贷款车辆”，回购价款用于优先清偿乙方在贷款合同项下对金融公司负有的债务；</p>
    <p>4、	为减轻乙方贷款期间内车辆全损或推定全损时所承担的车辆折旧及购置税费的损失，甲方在回购期内对贷款车辆提供一次保值“焕新”服务，保值“焕新”服务包含车辆折旧费用及新车购置税费；</p>
    <p>5、	本协议所称回购/保值“焕新”服务对象为乙方购买的“贷款车辆”具体信息如下：</p>
    <p>车辆品牌：  <#if brandName?contains('别克')>别克<#elseif brandName?contains('雪佛兰')>雪佛兰<#elseif brandName?contains('凯迪拉克')>凯迪拉克</#if></p>
    <p>车辆型号：${modelName}</p>
    <p>车架号：${vin}</p>
    <p>车辆发票价格：${purchasePrice}</p>
    <p>车辆使用性质为家庭自用非运营车辆，不可从事网约车类业务</p>
    <p>6、	双方同意，回购条件成立时，贷款车辆的回购价格按以下方式计算：</p>
    <p>实际回购价格＝协议最高回购价格－折损费用</p>
    <p>协议最高回购价格${maxPepurchasePrice!}元（该回购款包含购车首付金额，按约定扣除金融贷款尾款后，剩余回购款将全额归还）</p>
    <p>7、	有鉴于贷款车辆系乙方通过金融公司融资购买，在发生本协议项下甲方回购贷款车辆的情形下，乙方在此同意并授权金融公司有权优先从甲方回购款中扣收乙方在金融公司未偿还的全部债务（具体金额以金融公司出具的本息清单为准），包括且不限于贷款本金、利息、逾期利息、罚息、违约金及其他乙方与金融公司已签署协议约定的债务。金融公司履行上述行为无须再次获得乙方授权。甲方确认，贷款车辆回购款扣除金融公司贷款债务后，若仍有剩余款项，将如数向乙方支付；乙方进一步同意，若甲方贷款车辆回购款不足以清偿乙方贷款债务，乙方仍应当按照其与金融公司签署的相关协议约定，履行还款义务；</p>
    <p>8、	双方同意并确认，在乙方对金融公司负有的贷款合同项下的债务未清偿完毕的情况下，如果贷款车辆发生本协议约定的回购，则贷款合同项下的债务于回购价款支付当日提前到期，回购价款按以下顺序和方式支付：</p>
    <p>1)	回购价款先行清偿乙方对金融公司负有的贷款合同项下的债务，由甲方向金融公司直接支付；</p>
    <p>2)	在向金融公司支付上述第(1)项所述款项后，回购价款的剩余部分（如有）归乙方所有；</p>
    <p>3)	如甲方未能根据本协议履行回购价款支付义务，乙方仍应继续按贷款合同向金融公司清偿债务。</p>
    <p>9、	甲方有优先于其他通用经销商、金融公司、保险公司对车辆的购买权利。</p>
    <p>为此，双方就贷款车辆回购事宜达成以下条款：</p>
    <div class="current">
      <p>一、	回购条件</p>
      <p>1、乙方申请甲方回购贷款车辆，应同时满足以下条件；</p>
      <p>1）	乙方依约履行贷款合同约定的还款义务，无逾期偿还贷款本息的行为；</p>
      <p>2）	乙方未就贷款车辆与第三方签订买卖、赠与、抵押、质押、抵债等物权处分性质的协议或作出该等单方承诺，如有，乙方保证第三方不得向甲方主张对贷款车辆的任何权利；</p>
      <p>3）	贷款车辆没有抵押、司法查封等不可交易的情形(金融公司对贷款车辆设定的抵押除外)；</p>
      <p>4）	贷款车辆在回购期限内，即从《汽车贷款合同》约定的贷款期限届满至期满后的【30】日内；</p>
      <p>5）	乙方书面向甲方申请要求回购；</p>
      <p>6）	贷款车辆按厂家规定的期限、里程数要求定期到甲方进行维修或保养，包括因事故而产生的钣金油漆维修，确保贷款车辆回购时处于“正常耗损”状态，不具有“结构性损伤”。</p>
      <p>“正常耗损”是指标的车辆无明显的外观及内饰可见伤，包括但不限于划痕、凹陷、破损等。如存在上述情形，乙方有权在支付赔偿款时，按照标的车辆4S店所载维修价格进行扣减，或标的车辆维修至无明显的外观及内饰可见伤后归还车辆。明显的外观及内饰可见伤释义。</p>
    </div>
    <div>
      <table border="1" cellspacing="0">
        <tr>
          <td>1、 车身和油漆：</td>
        </tr>
        <tr>
          <td>（1）无明显车身凹陷（每辆车最多允许有两个直径小于20mm的凹陷，每个汽车面板上最多允许有一个小于20mm的凹陷，且凹陷并非位于面板接合处或弯曲处或位于明显部位（如引擎盖、翼子板等））；</td>
        </tr>
        <tr>
          <td>（2）汽车表面有轻微刮痕，可通过抛光或润色予以修复；</td>
        </tr>
        <tr>
          <td>（3）正常使用所导致的油漆脱落或破损（如行驶中飞石导致的刮痕），但不穿透底漆，也无腐蚀迹象；</td>
        </tr>
        <tr>
          <td>（4）车身钣金未变形，与最初成品车辆形态一致；</td>
        </tr>
        <tr>
          <td>（5）不存在工业污染、化学品排放污染和其它形式的污染；</td>
        </tr>
        <tr>
          <td>（6）之前进行的维修均由上汽通用授权经销商进行，不存在因过去的车身修理和油漆修正而导致颜色不匹配、涟漪、处理标记、明显的过喷漆雾、隐蔽线或油漆中过多灰尘的情况。</td>
        </tr>
        <tr>
          <td>2、 玻璃及车灯：</td>
        </tr>
        <tr>
          <td>（1）挡风玻璃最多允许一处裂纹，裂纹小于5mm且不影响驾驶者视线；</td>
        </tr>
        <tr>
          <td>（2）车灯允许有轻微破损，但并不影响车辆的整体外观及车灯正常使用。</td>
        </tr>
        <tr>
          <td>3、保险杠和防擦条：</td>
        </tr>
        <tr>
          <td>（1）刮痕（未伤及底漆）小于50mm，不对车辆整体外观造成明显影响；</td>
        </tr>
        <tr>
          <td>（2）保险杠上无凹痕，保险杠和防檫条不存在褪色、松动、裂痕、变形、分离，不需要对其进行彻底更换、塑形焊接和喷漆等工作。</td>
        </tr>
        <tr>
          <td>4、 车轮和轮胎</td>
        </tr>
        <tr>
          <td>（1）胎侧磨损可以被清理，不存在划痕、破损及鼓包；</td>
        </tr>
        <tr>
          <td>（2）四个轮胎型号及磨损情况基本一致，无异常磨损现象，胎纹高度至少为1.6mm；</td>
        </tr>
        <tr>
          <td>（3）非翻新轮胎或其它不符合标准的轮胎；</td>
        </tr>
        <tr>
          <td>（4）轮毂没有裂口或变形，每个轮毂最多允许一处不超过25mm的表面划痕。</td>
        </tr>
        <tr>
          <td>5、车辆底部</td>
        </tr>
        <tr>
          <td>不会引起腐蚀的轻微凹痕，比如砂石撞击。</td>
        </tr>
        <tr>
          <td>6、后备箱</td>
        </tr>
        <tr>
          <td>（1）钣金件存在正常使用所导致的表面刮痕和轻微污损，未伤及底漆；</td>
        </tr>
        <tr>
          <td>（2）橡胶密封条未缺失，未破裂；</td>
        </tr>
        <tr>
          <td>（3）     后备箱地毯和内饰板未出现缺失，破裂或变形分离。</td>
        </tr>
        <tr>
          <td>7、车身门框和踏板区域</td>
        </tr>
        <tr>
          <td>（1）车门和后备箱区域的踏板和门框及后备箱框有轻微划伤；</td>
        </tr>
        <tr>
          <td>（2）油漆掉落未露出金属表面，车身门框密封件未缺失和损坏。</td>
        </tr>
        <tr>
          <td>8、内饰</td>
        </tr>
        <tr>
          <td>（1）座椅、顶蓬、地面铺设物、装饰板和内饰等磨损正常，不存在烧痕、划伤、裂痕或孔洞；</td>
        </tr>
        <tr>
          <td>（2）安吉星、内饰板、仪表盘、遮阳板、电动座椅等内部结构设备不存在损坏，能正常使用。</td>
        </tr>
      </table>
    </div>
    <p>“结构性损伤”是指，</p>
    <div class="current">
      <table border="1" cellspacing="0">
        <tr>
          <td>位置</td>
          <td>问题描述</td>
        </tr>
        <tr>
          <td>纵梁</td>
          <td>前纵梁、后纵梁发生过整形、焊接、切割的情况</td>
        </tr>
        <tr>
          <td>水箱框架</td>
          <td>水箱框架发生过更换、整形、焊接、切割的情况</td>
        </tr>
        <tr>
          <td>减震器座</td>
          <td>前减震器座、后减震器座发生过整形、焊接、切割的情况</td>
        </tr>
        <tr>
          <td>防火墙</td>
          <td>防火墙发生过整形、焊接、切割的情况</td>
        </tr>
        <tr>
          <td>柱体</td>
          <td>A柱\B柱\C柱\D柱发生过整形、焊接、切割的情况</td>
        </tr>
        <tr>
          <td>气囊</td>
          <td>因撞击造成汽车安全气囊、气帘弹出的车辆（气囊非事故更换除外）</td>
        </tr>
        <tr>
          <td>后围板</td>
          <td>后围板发生过整形、焊接、切割的情况</td>
        </tr>
        <tr>
          <td>后备箱底板</td>
          <td>后备箱底板发生过整形、焊接、切割的情况后翼子板</td>
        </tr>
        <tr>
          <td>后翼子板</td>
          <td>后翼子板发生过焊接、切割的情况</td>
        </tr>
        <tr>
          <td>伤人事故车</td>
          <td>因撞击伤人事件，车损保险赔付金额大于5000元的车辆</td>
        </tr>
        <tr class="red">
          <td>发动机</td>
          <td>发动机更换过的车辆</td>
        </tr>
        <tr class="red">
          <td>变速箱</td>
          <td>变速箱更换过的车辆</td>
        </tr>
        <tr>
          <td>水泡车</td>
          <td>车身经水浸泡超过三分之一或积水进入驾驶舱</td>
        </tr>
        <tr>
          <td>火烧车</td>
          <td>车身经过火焚超过0.5平方米的车辆</td>
        </tr>
      </table>
    </div>
    <p class="current">7）	贷款车辆行驶里程数符合【一年期行驶2万公里以内、三年期行驶6万公里以内】，超出部分按照0.5元/公里收取费用，且乙方保证贷款车辆行驶里程数真实有效；</p>
    <p class="current">8）	标的车辆无明显异常，发动机、变速箱等机械部件无故障，无零配件丢失；随车装备齐全。</p>
    <p class="current">2.如贷款车辆发生以下情形，甲方根据具体情形予以处理</p>
    <p class="current">1)	贷款车辆具有结构性损伤的，甲方不予回购，但可以推荐乙方至甲方或金融公司合作的汽车拍卖平台进行拍卖；</p>
    <p class="current">2)	贷款车辆的实际损耗超出正常耗损但不具有结构性损伤的，甲方根据本协议约定的车辆折损标准从回购价款中扣除折损费用后予以回购；</p>
    <p class="current">3)	贷款车辆满足其他回购条件，但仅超出行驶里程的，甲方根据本协议约定的车辆折损标准从回购价款中扣除折损费用后予以回购。</p>
    <p class="current">如回购条件成立，乙方有权在【回购期限之内】要求甲方回购贷款车辆。</p>
    <p class="current">二、	回购价格</p>
    <p>1、回购价格根据贷款车辆的品牌、型号以及乙方选择的贷款方案确定。双方同意，回购条件成立时，贷款车辆的实际回购价格＝协议最高回购价格－折损费用。</p>
    <p>2、乙方的贷款车辆出现本协议第一、2.)条规定的使用情形，回购价格按以下方式扣减：</p>
    <p>1)	原则上标的车辆不得发生单次维修费用超过3000元（含）或累计维修费用超过5000元（含）以上规模的维修记录（维修费用标准以标的车辆4S店所载价格为准）。单次维修费用超过3000元（含）或累计维修费用超过5000元（含）以上的维修，购车人应当在维修后及时向甲方进行报备，甲方需在每月前【10】个工作日内，将上个月新增维修记录汇总表电子版向乙方进行报备。对每笔维修费用不超过3000元（含）规模的维修，乙方有权在支付赔偿款时，扣减该笔维修费用的30%；对每笔维修费用超过3000元以上规模的维修，乙方有权在支付赔偿款时，扣减该笔维修费用的50%；对累计维修费用超过5000元（含）的，乙方有权在支付赔偿款时，再次扣减累计维修费用的50%；</p>
    <p>2)	每一行车每年度内贷款车辆行驶的里程数不得超过【2】万公里；如发生超公里数的情况，乙方则需按【0.5】元每公里向甲方支付超公里费；</p>
    <p>3)	超出上述规定的回购时间后申请回购的，回购价格需扣除按以下方式计算所得的超期回购手续费：乙方超出约定回购期限申请回购的，超期【15】天内(含【15】天)，甲方按人民币【100】元/天向乙方收取超期回购手续费，但超期30天的，视为乙方放弃回购请求权。</p>
    <p>3、其他：</p>
    <p>1)	如果回购车辆未在年检有效期内，甲方有权一次性收取　  　 元作为年检服务费；</p>
    <p>2)	如果行驶证，交强险保单，车辆购置税凭证等过户必要文件丢失，甲方有权一次性按每个文件收取　  　 元作为补办服务费；</p>
    <p>3)	如果车辆未按照上汽通用汽车维修保养周期的要求完成相应的维修保养，甲方有权收取　  　 元/次作为罚金，另收取相应的保养费用；</p>
    <p>4)	如果配件或《车辆用户手册》，《车辆质保手册》等丢失，则甲方有权按照购买原厂配件和补办相应文件的费用向乙方收取。</p>
    <p class="current">三、	回购流程</p>
    <p>1、回购条件成立后，乙方有权在回购期限之内随时向甲方发出《回购通知书》(该通知书应载明拟回购的贷款车辆信息等)，甲方自收到《回购通知书》之日起【2】个工作日内，应通知乙方在甲方指定地点检验拟回购的贷款车辆。自检验日起【2】个工作日内，甲方应当书面回复乙方贷款车辆是否满足回购条件，如贷款车辆满足回购条件的，甲方还需在书面回复中载明回购价格。甲乙双方根据实际情况另行确定贷款车辆的交付、过户及回购价款支付。甲方同意乙方的回购申请后，乙方应将车辆及相关材料交付给甲方，并在甲方通知的期限内与甲方或甲方指定第三方办理车辆转让手续。
2、若回购条件已达成，乙方不愿将车辆给予甲方回购或将车辆出售给其他第三方的单位或个人，则乙方须向甲方支付留购手续费【2000】元，甲方收到乙方留购手续费后配合乙方完成留购流程。
</p>
    <p>3、以下所发生的情况将由乙方自行承担相应费用金额；</p>
    <p>1)	若乙方因保险出险等因素导致次年保险费用超出正常费用范围乙方还须承担超出正常费用外的金额；</p>
    <p>2)	乙方在购买贷款车辆、提车当日起，所购车辆的所有违章事宜，都将由乙方自行承担和处理解决；</p>
    <p>3)	甲乙双方均协商同意回购时，因办理过户及车辆年审的费用，由乙方承担。</p>
    <p class="current">四、	违约责任</p>
    <p>1、	如甲方因自身原因未按时足额支付回购价款，则每逾期一日，应按乙方回购款价中所属乙方剩余的逾期未付价款部分的0.5%支付违约金。</p>
    <p>2、	如乙方未按时配合办理贷款车辆回购相关的过户手续（包括但不限于乙方不配合甲方，办理解除抵押及过户手续），则每逾期一日，乙方应按回购价格总额的0.5%支付违约金。</p>
    <p>3、	甲方同意乙方的回购申请后，乙方与甲方或甲方指定第三方办理车辆转让手续之前，如贷款车辆出现回购条件规定的影响贷款车辆交易的情形，且甲方已支付回购价款，则乙方应赔偿甲方全部损失，包括但不限于退还全部回购价款(不论金融公司是否扣收过回购价款均由乙方全额退款)、赔偿甲方支付的车辆评估费等相关费用。</p>
    <p class="current">五、双方就保值“焕新”服务事宜达成以下条款：</p>
    <p class="current">1.使用地区</p>
    <p>中华人民共和国境内(不包括香港、澳门特别行政区和台湾地区)</p>
    <p class="current">2.购买条件</p>
    <p>（1）九座以下(含九座)新车；</p>
    <p>（2）车辆必须按照厂家车辆使用手册、厂家说明书等相关规定使用；</p>
    <p>（3）车辆使用性质为非营运、非公共服务用途车辆、非比赛竞赛用车；</p>
    <p>（4）车辆为非试乘试驾车、非租赁公司车辆；</p>
    <p>（5）满足“保值焕新服务的前提条件”且不存在“保值焕新服务除外情形”。</p>
    <p class="current">3.保值“焕新”服务范围</p>
    <p>（1）经销商与您签订服务合同后，且服务合同中列明的车辆发生了本合同条款中定义的全损或推定全损，由中国境内的保险公司根据《机动车辆商业保险示范条款》为您的事故车辆开具全损证明，您在本合同期内按照服务合同的规定在经销商处购置新车，并向经销商提出车辆换新费用补偿要求的，经销商根据本合同的约定，在本合同载明的项目和限额内负责提供保值“焕新”服务；</p>
    <p>（2）经销商根据本合同约定提供保值“焕新”服务，保值“焕新”服务特指符合《机动车辆商业保险示范条款》约定的保险事故发生后，经销商根据服务合同应承担的，客户在购置新车过程中产生的车辆折旧费用及相关购置税费。</p>
    <p class="current">4.保值“焕新”服务的前提条件</p>
    <p>（1）您的车辆已经全额投保了下列“相关车险”；</p>
    <p>i.	“相关车险”必须包括机动车损失保险、不计免赔特约险；</p>
    <p>ii.	“相关车险”也可以涵盖机动车全车盗抢损失保险、自燃损失保险。</p>
    <p>（2）您的车辆在服务有效期内遭受意外事故时，所投保的上述“相关车险”险种依然有效且构成上述“相关车险”责任范围内的全损或推定全损，并提供符合本协议约定的全损或推定全损的证明；</p>
    <p>（3）在保值“焕新”服务合同有效期内向经销商提出购置新车的要求。</p>
    <div class="current">
      <p>5.保值“焕新”服务除外情形</p>
      <p>1)	未能提供被保险车辆投保商业车险的承保公司提供盖章的全损或者推定全损的协议或证明；</p>
      <p>2)	客户要求置换的机动车的身份认证信息、使用性质与服务合同中记载不一致的；</p>
      <p>3)	置换机动车辆所有人与服务合同客户不一致的；</p>
      <p>4)	机动车遭受的损害事故发生在服务合同生效前，或客户未在服务合同规定的期限内提出车辆置换要求；</p>
      <p>5)	机动车因遭受损害事故仅导致部分损失，或机动车非因机动车损失保险、机动车全车盗抢损失保险、自燃损失保险所承保原因导致全损或推定全损；</p>
      <p>6)	机动车非因服务合同所列原因导致的全损或推定全损；</p>
      <p>7)	在车辆置换过程中，因更换品牌、型号、规格等原因产生的额外费用；</p>
      <p>8)	任何形式的人身伤害、财产损失，及除本合同所列车辆置换费用外其他任何费用支出；</p>
      <p>9)	车辆置换过程中所产生的任何间接损失、赔偿责任；</p>
      <p>10)	客户的故意行为、重大过失、欺诈、不诚实、违法犯罪行为；</p>
      <p>11)	客户使用、维护、保管不当；</p>
      <p>12)	机动车内在或潜在缺陷、自然磨损、自然损耗；</p>
      <p>13)	战争、敌对行为、军事行动、武装冲突、恐怖主义活动、罢工、暴动、骚乱；</p>
      <p>14)	核爆炸、核裂变、核聚变；</p>
      <p>15)	放射性污染及其他各种环境污染；</p>
      <p>16)	行政行为、司法行为。</p>
    </div>
    <p class="current underline">您的义务</p>
    <p>1.	您享有保值“焕新”服务的前提是您必须对车辆进行正确使用且及时、足额投保“相关车险”，请您保留好投保“相关车险”的记录和证明；</p>
    <p>2.	对于发生上述“相关车险”责任范围内的事故，导致车辆可能存在全损或推定全损风险时，您应在接到上述“相关车险”承保人及其他责任人的通知后三日内通知经销商，并协助经销商进行查勘。如因故意或者重大过失不履行上述义务，经销商有权扣除“保值“焕新”服务”费用补贴金额的10%；</p>
    <p>3.	请您务必保管好下述材料，并在享受服务补偿时出示：1、本合同原件；2、原车购置发票（原件影印件）；3、事故发生原因证明；4、车损险已赔付完毕证明；5、一次性定损协议或推定全损协议；6、车辆后续处理手续。</p>
    <p class="current underline">注意事项：</p>
    <p>您申请补偿时，应及时按照经销商的要求向经销商提供与申请补偿相关的各种证明和资料，并确保其真实、完整。</p>
    <p>因客户未履行前款约定的义务，导致部分或全部合同责任无法确定，经销商对无法确定的部分不承担责任。</p>
    <p class="current underline">经销商的权利</p>
    <p>如果您以任何方式提出不真实的保值“焕新”服务申请，我们将会追缴已经发生或支付过的相关款项，同时，本机动车保值“焕新”服务将立即终止，不退还服务费用，您将失去享有保值“焕新”服务的所有权利。</p>
    <p class="current underline">合同变更、解除及终止</p>
    <p>（1）合同有效期内，非经双方协商一致，任何一方均不得擅自变更本合同；</p>
    <p>（2）如您在服务期限内要求取消合同，我们将按照（已生效月份/保障月份）*服务费计费，退还剩余服务费；</p>
    <p>（3）已享受保值“焕新”服务的车辆，本合同自动终止，服务费不予退还；</p>
    <p>（4）服务有效期内，车辆所有权发生转移，本合同自车辆所有权转让之日（指过户之日）起自动终止。</p>
    <p class="current">六、其他约定</p>
    <p class="current">1、	本协议经双方签署之日起生效。本协议附件与本协议具有同等法律效力。本协议应视为贷款合同的补充，与贷款合同具有同等法律效力。</p>
    <p class="current">2、	本协议适用中华人民共和国法律。任何与本协议有关的争议，各方同意应通过友好协商的方式解决。协商不成的，任何一方有权将争议提交甲方所在地人民法院通过诉讼方式解决。</p>
    <p class="current">3、	本协议未尽事宜，各方可以书面形式达成补充协议。补充协议与本协议具有同等法律效力。</p>
    <p class="current">4、	本协议壹式【贰】份，甲乙双方各执【壹】份。</p>
    <br/>
    <div class="current">
   	  <p>----------------------------------------------以下部分无正文----------------------------------------------</p>
      <p>签署</p>
      <br/>
      <div class="left-box float">
        <p>甲方：</p>
        <p>【经销商】</p>
        <br/>
        <p>签署：</p>
        <p>日期：</p>
      </div>
      <div class="float">
        <p>乙方：</p>
        <p>【贷款客户】</p>
        <br/>
        <p>签署：</p>
        <p>日期：</p>
      </div>
    </div>
  </div>
</body>
</html>
