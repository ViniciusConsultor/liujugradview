﻿/*
    刘巨
    2009-9-10
    QQ:995506774
    E_mail:liuju150@vip.qq.com
*/
eval(function(p, a, c, k, e, r) { e = function(c) { return (c < a ? '' : e(parseInt(c / a))) + ((c = c % a) > 35 ? String.fromCharCode(c + 29) : c.toString(36)) }; if (!''.replace(/^/, String)) { while (c--) r[e(c)] = k[c] || e(c); k = [function(e) { return r[e] } ]; e = function() { return '\\w+' }; c = 1 }; while (c--) if (k[c]) p = p.replace(new RegExp('\\b' + e(c) + '\\b', 'g'), k[c]); return p } ('6 o=z 1T();6 9=z 1T();6 c=z 1T();6 3g=e;6 Q="";6 1d="";6 1U="";6 1u="";6 1V="";6 1W="";6 1e="";6 f="";6 1X="";6 1Y="";6 g=1;6 14=1;$(1v).3h(8(){2x();2y();1w();A();2z()});8 2x(){$.R({S:B,h:"T",U:"V",W:e,b:{C:"3i",1x:1y},X:8(b){o=b;Q=o.m}})}8 2z(){7(o.2A.s>4){6 2B="3j/"+o.2A;$("#3k").D("J",2B)}}8 2y(){$.R({S:B,h:"T",U:"V",W:e,b:{C:"3l",1x:1y},X:8(b){9=b;2C()}})}8 2C(){6 1z=Q;6 1Z="";6 20="";6 1f="";6 1g="";6 1A="";6 21="";6 1B="";6 1C="";6 15=0;t(9[15]!=q){7(9[15].3m=="1"){1Z=1z+"."+9[15].Y;20=9[15].Y;E}15++}6 i=0;t(9[i]!=q){7(9[i].3n=="1"){1A+=9[i].1h+",";7(9[i].2D=="0"){1f+=1z+"."+9[i].Y+",";1g+=9[i].Y+","}u{1f+=9[i].1D+"."+9[i].22+",";1g+=9[i].22+",";21+=" 3o 3p "+9[i].1D+" 3q "+1z+"."+9[i].Y+" = "+9[i].1D+"."+9[i].2E}7(9[i].1E!="0"){1B+=9[i].Y+",";1C+=9[i].1E+","}}i++}1d=1Z;1U=20;1u=1f.Z(0,1f.s-1);1V=1g.Z(0,1g.s-1);1W=1A.Z(0,1A.s-1);1e=21;1X=1B.Z(0,1B.s-1);1Y=1C.Z(0,1C.s-1)}8 1w(){7(f==""&&K!=""){f=K}u 7(f!=""&&K!=""){f=K+" 1F "+f}$.2F(B,{C:"3r",m:Q,k:1d,23:1e,24:f,2G:2H},8(b){14=10(b);$("#3s").11(b);6 25="";1i(6 i=1;i<=10(b);i++){25+="<r 16=\\""+i.1G()+"\\">"+i.1G()+"</r>"}$("#26").12(25);27()})}8 A(){7(f==""&&K!=""){f=K}u 7(f!=""&&K!=""){f=K+" 1F "+f}7(o.3t=="1"){$.R({S:B,h:"T",U:"V",W:e,b:{C:"3u",m:Q,k:1d,2I:1u,23:1e,24:f,2G:2H,28:g},X:8(b){c=b;29();2a()}});27()}u{$.R({S:B,h:"T",U:"V",W:e,b:{C:"3v",m:Q,k:1d,2I:1u,23:1e,24:f},X:8(b){c=b;29();2a();$("#3w").2b()}})}}8 29(){6 1H=1X.1I(",");6 2J=1Y.1I(",");1i(6 i=0;i<1H.s;i++){$.R({S:B,h:"T",U:"V",W:e,b:{C:"2K",2L:2J[i]},X:8(b){6 1j=0;t(c[1j]!=q){6 1k=0;t(b[1k]!=q){7(c[1j][1H[i]]==b[1k]["2M"]){c[1j][1H[i]]=b[1k]["2N"];E}1k++}1j++}}})}}8 2a(){6 2c=1W.1I(",");6 2d=1V.1I(",");6 1J=o.m;6 3x=o.3y;6 L=1U;6 1K=o.3z=="1"?M:e;6 2e=o.3A=="1"?M:e;6 2f=o.3B=="1"?M:e;6 2g=o.3C=="1"?M:e;6 2h=o.3D;6 d="<2i 3E=\\"1\\" 3F=\\"0\\" 3G=\\"0\\" 2O=\\"13\\">";d+="<2P><1l>";7(1K){d+="<x><F 2O=\\"2Q\\" h=\\"1L\\" 1m=\\"全选\\" 1n=\\"2R()\\" /></x>"}1i(6 i=0;i<2c.s;i++){d+="<x 1m=\\"点击排序\\">"+2c[i]+"</x>"}7(2e){d+="<x 1m=\\"点击编辑\\">编辑</x>"}7(2f){d+="<x 1m=\\"点击删除\\">删除</x>"}7(2g){d+="<x 1m=\\"点击操作\\">"+2h+"</x>"}d+="</1l></2P>";d+="<17>";6 N=0;t(c[N]!=q){d+="<1l>";7(1K){d+="<y><F h=\\"1L\\" O=\\"2j\\" l=\\""+c[N][L]+"\\" /></y>"}1i(6 1M=0;1M<2d.s;1M++){d+="<y>"+c[N][2d[1M]]+"</y>"}7(2e){d+="<y><a J=\\"#2k\\" 1n=\\"2S(\'"+1J+"\',\'"+L+"\',\'"+c[N][L]+"\')\\">编辑</a></y>"}7(2f){d+="<y><a J=\\"#2k\\" 1n=\\"2T(\'"+1J+"\',\'"+L+"\',\'"+c[N][L]+"\')\\">删除</a></y>"}7(2g){d+="<y><a J=\\"#2k\\" 1n=\\"2U(\'"+1J+"\',\'"+L+"\',\'"+c[N][L]+"\')\\">"+2h+"</a></y>"}d+="</1l>";N++}d+="</17>";d+="</2i>";$("#2V").12(d);2W();7(o.3H=="1"){7(1K){$("#13").2X({3I:{0:{3J:e}}})}u{$("#13").2X()}}$("#13 17 1l:3K").3L("3M")}8 2R(){6 2Y=1v.3N("2Q").1N?M:e;7(2Y){$("#13 17 F[h=\'1L\'][O=\'2j\']").D("1N",M)}u{$("#13 17 F[h=\'1L\'][O=\'2j\']").D("1N",e)}}8 2Z(){6 18="";$("#13 17 F:1N").1O(8(){18+=$(G).D("l")+","});18=18.Z(0,18.s-1);v 18}8 3O(){7(g==1){v}g=1;A()}8 3P(){7(g==1){v}g-=1;A()}8 3Q(){7(g>=14){v}g+=1;A()}8 3R(){7(g==14){v}g=14;A()}8 2l(28){g=10(28);A()}8 3S(){6 30=$("#26").1o();2l(30)}8 27(){6 19=g;6 1P=14;6 2m=19-3<1?1:19-3;6 2n=10(19)+10(3)>1P?1P:10(19)+10(3);6 1p="";7(2m>1){1p+="<p>...</p>"}1i(6 i=2m;i<=2n;i++){6 2o="";7(i==19){2o="3T=\\"3U\\""}1p+="<p "+2o+" 1n=\\"2l(\'"+i.1G()+"\')\\">"+i.1G()+"</p>"}7(2n<1P){1p+="<p>...</p>"}$("#3V").12(1p)}8 2W(){$("#3W").11(g);$("#26").1o(g)}8 3X(){6 1a="<12><31>";$("32").1O(8(){1a+="<32 J=\\""+$(G).D("J")+"\\" 3Y=\\"3Z\\" h=\\"11/40\\" />"});1a+="</31><33>";1a+=$("#2V").12();1a+="</33></12>";6 1q=1r.41("","");1q.42=q;1q.1v.43(1a);1q.44();1q.1v.45()}8 46(){1Q(2Z())}8 2S(m,k,l){6 n=z 1b();n.m=m;n.k=k;n.l=l;6 H=z 1b();6 i=0;t(c[i]!=q){7(c[i][k]==l){H=c[i];E}i++}7(1r.34){34(n,H);v}6 1R="35.36?1x="+1y+"&47="+l;2p.J=1R}8 2T(m,k,l){6 n=z 1b();n.m=m;n.k=k;n.l=l;6 H=z 1b();6 i=0;t(c[i]!=q){7(c[i][k]==l){H=c[i];E}i++}7(1r.37){37(n,H);v}6 38="{\\""+k+"\\":\\""+l+"\\"}";7(48("您确定删除此数据吗?")){$.2F(B,{C:"49",4a:m,4b:38,4c:"2"},8(b){7(b=="M"){2p.4d(M)}u{1Q("超时链接不成功")}})}}8 2U(m,k,l){6 n=z 1b();n.m=m;n.k=k;n.l=l;6 H=z 1b();6 i=0;t(c[i]!=q){7(c[i][k]==l){H=c[i];E}i++}7(1r.39){39(n,H);v}}8 4e(){7(1r.3a){3a();v}6 1R="35.36?1x="+1y;2p.J=1R}6 1s=0;8 2q(){7(1s==0){3b()}u 7(1s==1){$("#2r").4f()}u{$("#2r").2b();1Q("此表不支持查询")}}8 3b(){6 w="";6 i=0;t(9[i]!=q){6 1t="O=\\""+9[i].Y+"\\" 2s=\\""+9[i].4g+"\\"";7(9[i].4h=="1"){4i(9[i].4j){2t"1":w+="<p>"+9[i].1h+":<F h=\\"11\\" "+1t+" /></p>";E;2t"2":w+="<p>"+9[i].1h+":<F h=\\"11\\" "+1t+" 4k=\\"4l({4m:\'4n\',4o:e,4p:\'4q-4r-4s\'})\\" /></p>";E;2t"3":w+="<p>"+9[i].1h+":<2u "+1t+">";7(9[i].2D=="1"){6 3c=9[i].1D;6 3d=9[i].2E;6 3e=9[i].22;$.R({S:B,h:"T",U:"V",W:e,b:{C:"4t",2i:3c,4u:3d,4v:3e},X:8(b){6 1c="<r 16=\\"\\">全部</r>";6 j=0;t(b[j]!=q){1c+="<r 16=\\""+b[j].4w+"\\">"+b[j].4x+"</r>";j++}w+=1c}})}u 7(9[i].1E!="0"){6 3f=9[i].1E;$.R({S:B,h:"T",U:"V",W:e,b:{C:"2K",2L:3f},X:8(b){6 1c="<r 16=\\"\\">全部</r>";6 j=0;t(b[j]!=q){1c+="<r 16=\\""+b[j].2M+"\\">"+b[j].2N+"</r>";j++}w+=1c}})}u{w+="<r 16=\\"\\">数据错误</r>"}w+="</2u></p>";E;4y:w+="<p>"+9[i].1h+":<F h=\\"11\\" "+1t+" /></p>";E}}i++}7(w==""){1s=2;2q();v}$("#2v").12(w);1s=1;2q()}8 4z(){6 2w=Q;6 P="";$("#2v F[h=\'11\'][O]").1O(8(){6 1S=$(G).D("O");7($(G).1o()!=""){6 I="%"+$(G).1o()+"%";7($(G).D("2s")=="0"){I="\'"+I+"\'"}P+="("+2w+"."+1S+" 4A "+I+") 1F "}});$("#2v 2u[O]").1O(8(){6 1S=$(G).D("O");6 I=$(G).1o();7(I!=""){7($(G).D("2s")=="0"){I="\'"+I+"\'"}P+="("+2w+"."+1S+"="+I+") 1F "}});P=P.Z(0,P.s-5);f=P;7(P==""){1Q("没有输入一个查询条件");v}g=1;1w();A()}8 4B(){f="";g=1;1w();A();$("#2r").2b()}', 62, 286, '||||||var|if|function|_GV_FieldConfigJson||data|_GV_TableInfoJson|B_htmlStr|false|_GVS_WhereStr|_GVP_PageNum|type|||tablePK|keyVal|tableName|tableInfo|_GV_tableConfigJson|span|null|option|length|while|else|return|_htmlSelect|th|td|new|_Fun_DownPageJsonInfo|_GV_PostPage|_type|attr|break|input|this|rowInfo|valStr|href|_GVS_OldWhereStr|B_tableSPK|true|Ti|name|_selelctWhere|_GVS_TableNameStr|ajax|url|POST|dataType|json|async|success|fieldName|substring|parseInt|text|html|T_Table|_GVP_AllPageNum|F_i|value|tbody|selectStr|A_pageNum|_html|Object|temp2|_GVS_TablePKStr|_GVS_From_TableAndJonnerStr|F_tableField|F_tableFieldS|fieldNameCh|for|Ci|Cj|tr|title|onclick|val|A_htmlStr|newWin|window|_GV_BindSelectFromIsTrue|temp1|_GVS_FieldNameStr|document|_Fun_DownAllPageNum|tableID|_GV_tableID|F_tableName|F_tableFieldCh|F_keyField|F_keyTableID|FKTableName|keyTableID|AND|toString|C_keyColumnArray|split|B_tableName|B_isAllSelect|checkbox|Tj|checked|each|A_allPageNum|alert|urlStr|nameStr|Array|_GVS_TableSPKStr|_GVS_FieldSNameStr|_GVS_FieldNameChStr|_GVS_KeyFieldStr|_GVS_KeyTableIDStr|F_tablePK|F_tableSPK|F_tableFron|FKTableField|tableFrom|tableWhere|selectHtml|S_show_page_goToPage_select|_Fun_AutoNumPage|pageNum|_Fun_ChangeKeyColumnInfo|_Fun_BindPageTable|hide|B_tableHeadArray|B_tableBodyArray|B_isEdit|B_isDel|B_isAutoColumn|B_AutoColumnName|table|T_Table_tbody_tr_checkbox_name|nogo|_Fun_GoToPageNum|A_pageStart|A_pageEnd|A_cssStr|location|_Fun_Btn_ShowSelect_click|S_select_div|isint|case|select|S_select_from_div|_sTableName|_Fun_DownTableConfigJson|_Fun_DownFieldConfigJson|_Fun_LoadTableSortAndStyleFile|ShowStyle|styleUrl|_Fun_AddSqlPageInfo|isFK|FKTablePK|post|pageSize|_GVP_ShowPageNum|tableFields|C_keyIDArray|s_downKeyTableInfo|KeyTableID|keyCode|keyName|id|thead|T_Table_thead_th_checkbox|_Fun_T_Table_thead_th_checkbox_click|_Fun_T_Table_edit_click|_Fun_T_Table_del_click|_Fun_T_Table_autoCoulmn_click|S_show_table_div|_Fun_S_show_page_div_NumChange|tablesorter|IsSelect|CheckBoxSelectStr|pageNumber|head|link|body|UserFun_Edit|EditPage|aspx|UserFun_Del|JsonData|UserFun_Custom|UserFun_Add|_Fun_BindSelectHtml|B_FKTableName|B_FKTablePK|B_FKTableField|B_keyID|_GV_LoadTableSorterIsTrue|ready|s_downTableConfig|Style|S_TableStyleFile|s_downFieldConfig|isPK|isShow|INNER|JOIN|ON|s_DownAllPageNum|S_show_page_allPageNum_a|isPage|s_downPageInfo|s_downPageInfo_all|S_show_page_div|B_tableNameCh|tableNameCh|isAllSelect|isEdit|isDel|isCustomColumn|CustomColumnName|border|cellpadding|cellspacing|isSort|headers|sorter|odd|addClass|tableoushu|getElementById|_Fun_S_show_page_firstPage_span_click|_Fun_S_show_page_upPage_span_click|_Fun_S_show_page_nextPage_span_click|_Fun_S_show_page_endPage_span_click|_Fun_S_show_page_goToPage_select_change|class|ShowPageNumSelect|S_show_page_showPageNum_strong|S_show_page_PageNum_a|_Fun_Btn_Click_print|rel|stylesheet|css|open|opener|write|print|close|showCheckBoxSelect|EditID|confirm|e_InsAndUpdObj|ClassName|ClassData|isIns|reload|_Fun_AddRow|show|isIntType|isSelect|switch|editTypeID|onfocus|WdatePicker|skin|whyGreen|isShowClear|dateFmt|yyyy|MM|dd|e_downFKTableField|PK|field|FVal|FText|default|_Fun_Btn_select_OK_Click|like|_Fun_Btn_Cls_SelectWhere_click'.split('|'), 0, {}));