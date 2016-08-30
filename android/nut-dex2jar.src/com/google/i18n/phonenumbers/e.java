package com.google.i18n.phonenumbers;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class e
{
  private static final Pattern A;
  private static final Pattern B;
  private static e C;
  static final a a = new f();
  public static final Logger b = Logger.getLogger(e.class.getName());
  static final Pattern c;
  static final Pattern d;
  static final Pattern e;
  static final String f;
  static final Pattern g;
  private static final Map<Integer, String> i;
  private static final Map<Character, Character> j;
  private static final Map<Character, Character> k;
  private static final Map<Character, Character> l;
  private static final Map<Character, Character> m;
  private static final Pattern n;
  private static final String o;
  private static final Pattern p;
  private static final Pattern q;
  private static final Pattern r;
  private static final Pattern s;
  private static final String t;
  private static final String u;
  private static final Pattern v;
  private static final Pattern w;
  private static final Pattern x;
  private static final Pattern y;
  private static final Pattern z;
  private final b D;
  private final Set<String> E = new HashSet(35);
  private final q F = new q();
  private final Set<String> G = new HashSet(320);
  private final Set<Integer> H = new HashSet();
  public final Map<Integer, List<String>> h;

  static
  {
    Object localObject1 = new HashMap();
    ((HashMap)localObject1).put(Integer.valueOf(52), "1");
    ((HashMap)localObject1).put(Integer.valueOf(54), "9");
    i = Collections.unmodifiableMap((Map)localObject1);
    localObject1 = new HashMap();
    ((HashMap)localObject1).put(Character.valueOf('0'), Character.valueOf('0'));
    ((HashMap)localObject1).put(Character.valueOf('1'), Character.valueOf('1'));
    ((HashMap)localObject1).put(Character.valueOf('2'), Character.valueOf('2'));
    ((HashMap)localObject1).put(Character.valueOf('3'), Character.valueOf('3'));
    ((HashMap)localObject1).put(Character.valueOf('4'), Character.valueOf('4'));
    ((HashMap)localObject1).put(Character.valueOf('5'), Character.valueOf('5'));
    ((HashMap)localObject1).put(Character.valueOf('6'), Character.valueOf('6'));
    ((HashMap)localObject1).put(Character.valueOf('7'), Character.valueOf('7'));
    ((HashMap)localObject1).put(Character.valueOf('8'), Character.valueOf('8'));
    ((HashMap)localObject1).put(Character.valueOf('9'), Character.valueOf('9'));
    Object localObject2 = new HashMap(40);
    ((HashMap)localObject2).put(Character.valueOf('A'), Character.valueOf('2'));
    ((HashMap)localObject2).put(Character.valueOf('B'), Character.valueOf('2'));
    ((HashMap)localObject2).put(Character.valueOf('C'), Character.valueOf('2'));
    ((HashMap)localObject2).put(Character.valueOf('D'), Character.valueOf('3'));
    ((HashMap)localObject2).put(Character.valueOf('E'), Character.valueOf('3'));
    ((HashMap)localObject2).put(Character.valueOf('F'), Character.valueOf('3'));
    ((HashMap)localObject2).put(Character.valueOf('G'), Character.valueOf('4'));
    ((HashMap)localObject2).put(Character.valueOf('H'), Character.valueOf('4'));
    ((HashMap)localObject2).put(Character.valueOf('I'), Character.valueOf('4'));
    ((HashMap)localObject2).put(Character.valueOf('J'), Character.valueOf('5'));
    ((HashMap)localObject2).put(Character.valueOf('K'), Character.valueOf('5'));
    ((HashMap)localObject2).put(Character.valueOf('L'), Character.valueOf('5'));
    ((HashMap)localObject2).put(Character.valueOf('M'), Character.valueOf('6'));
    ((HashMap)localObject2).put(Character.valueOf('N'), Character.valueOf('6'));
    ((HashMap)localObject2).put(Character.valueOf('O'), Character.valueOf('6'));
    ((HashMap)localObject2).put(Character.valueOf('P'), Character.valueOf('7'));
    ((HashMap)localObject2).put(Character.valueOf('Q'), Character.valueOf('7'));
    ((HashMap)localObject2).put(Character.valueOf('R'), Character.valueOf('7'));
    ((HashMap)localObject2).put(Character.valueOf('S'), Character.valueOf('7'));
    ((HashMap)localObject2).put(Character.valueOf('T'), Character.valueOf('8'));
    ((HashMap)localObject2).put(Character.valueOf('U'), Character.valueOf('8'));
    ((HashMap)localObject2).put(Character.valueOf('V'), Character.valueOf('8'));
    ((HashMap)localObject2).put(Character.valueOf('W'), Character.valueOf('9'));
    ((HashMap)localObject2).put(Character.valueOf('X'), Character.valueOf('9'));
    ((HashMap)localObject2).put(Character.valueOf('Y'), Character.valueOf('9'));
    ((HashMap)localObject2).put(Character.valueOf('Z'), Character.valueOf('9'));
    k = Collections.unmodifiableMap((Map)localObject2);
    localObject2 = new HashMap(100);
    ((HashMap)localObject2).putAll(k);
    ((HashMap)localObject2).putAll((Map)localObject1);
    l = Collections.unmodifiableMap((Map)localObject2);
    localObject2 = new HashMap();
    ((HashMap)localObject2).putAll((Map)localObject1);
    ((HashMap)localObject2).put(Character.valueOf('+'), Character.valueOf('+'));
    ((HashMap)localObject2).put(Character.valueOf('*'), Character.valueOf('*'));
    j = Collections.unmodifiableMap((Map)localObject2);
    localObject2 = new HashMap();
    Object localObject3 = k.keySet().iterator();
    while (((Iterator)localObject3).hasNext())
    {
      char c1 = ((Character)((Iterator)localObject3).next()).charValue();
      ((HashMap)localObject2).put(Character.valueOf(Character.toLowerCase(c1)), Character.valueOf(c1));
      ((HashMap)localObject2).put(Character.valueOf(c1), Character.valueOf(c1));
    }
    ((HashMap)localObject2).putAll((Map)localObject1);
    ((HashMap)localObject2).put(Character.valueOf('-'), Character.valueOf('-'));
    ((HashMap)localObject2).put(Character.valueOf(65293), Character.valueOf('-'));
    ((HashMap)localObject2).put(Character.valueOf('‐'), Character.valueOf('-'));
    ((HashMap)localObject2).put(Character.valueOf('‑'), Character.valueOf('-'));
    ((HashMap)localObject2).put(Character.valueOf('‒'), Character.valueOf('-'));
    ((HashMap)localObject2).put(Character.valueOf('–'), Character.valueOf('-'));
    ((HashMap)localObject2).put(Character.valueOf('—'), Character.valueOf('-'));
    ((HashMap)localObject2).put(Character.valueOf('―'), Character.valueOf('-'));
    ((HashMap)localObject2).put(Character.valueOf('−'), Character.valueOf('-'));
    ((HashMap)localObject2).put(Character.valueOf('/'), Character.valueOf('/'));
    ((HashMap)localObject2).put(Character.valueOf(65295), Character.valueOf('/'));
    ((HashMap)localObject2).put(Character.valueOf(' '), Character.valueOf(' '));
    ((HashMap)localObject2).put(Character.valueOf('　'), Character.valueOf(' '));
    ((HashMap)localObject2).put(Character.valueOf('⁠'), Character.valueOf(' '));
    ((HashMap)localObject2).put(Character.valueOf('.'), Character.valueOf('.'));
    ((HashMap)localObject2).put(Character.valueOf(65294), Character.valueOf('.'));
    m = Collections.unmodifiableMap((Map)localObject2);
    n = Pattern.compile("[\\d]+(?:[~⁓∼～][\\d]+)?");
    localObject1 = String.valueOf(Arrays.toString(k.keySet().toArray()).replaceAll("[, \\[\\]]", ""));
    localObject2 = String.valueOf(Arrays.toString(k.keySet().toArray()).toLowerCase().replaceAll("[, \\[\\]]", ""));
    if (((String)localObject2).length() != 0)
    {
      localObject1 = ((String)localObject1).concat((String)localObject2);
      o = (String)localObject1;
      c = Pattern.compile("[+＋]+");
      p = Pattern.compile("[-x‐-―−ー－-／  ­​⁠　()（）［］.\\[\\]/~⁓∼～]+");
      q = Pattern.compile("(\\p{Nd})");
      r = Pattern.compile("[+＋\\p{Nd}]");
      d = Pattern.compile("[\\\\/] *x");
      e = Pattern.compile("[[\\P{N}&&\\P{L}]&&[^#]]+$");
      s = Pattern.compile("(?:.*?[A-Za-z]){3}.*");
      localObject1 = String.valueOf(String.valueOf("\\p{Nd}{2}|[+＋]*+(?:[-x‐-―−ー－-／  ­​⁠　()（）［］.\\[\\]/~⁓∼～*]*\\p{Nd}){3,}[-x‐-―−ー－-／  ­​⁠　()（）［］.\\[\\]/~⁓∼～*"));
      localObject2 = String.valueOf(String.valueOf(o));
      localObject3 = String.valueOf(String.valueOf("\\p{Nd}"));
      t = ((String)localObject1).length() + 2 + ((String)localObject2).length() + ((String)localObject3).length() + (String)localObject1 + (String)localObject2 + (String)localObject3 + "]*";
      localObject1 = String.valueOf("xｘ#＃~～");
      if (((String)localObject1).length() == 0)
        break label1476;
    }
    label1476: for (localObject1 = ",".concat((String)localObject1); ; localObject1 = new String(","))
    {
      u = d((String)localObject1);
      f = d("xｘ#＃~～");
      localObject1 = String.valueOf(String.valueOf(u));
      v = Pattern.compile(((String)localObject1).length() + 5 + "(?:" + (String)localObject1 + ")$", 66);
      localObject1 = String.valueOf(String.valueOf(t));
      localObject2 = String.valueOf(String.valueOf(u));
      w = Pattern.compile(((String)localObject1).length() + 5 + ((String)localObject2).length() + (String)localObject1 + "(?:" + (String)localObject2 + ")?", 66);
      g = Pattern.compile("(\\D+)");
      x = Pattern.compile("(\\$\\d)");
      y = Pattern.compile("\\$NP");
      z = Pattern.compile("\\$FG");
      A = Pattern.compile("\\$CC");
      B = Pattern.compile("\\(?\\$1\\)?");
      C = null;
      return;
      localObject1 = new String((String)localObject1);
      break;
    }
  }

  private e(b paramb, Map<Integer, List<String>> paramMap)
  {
    this.D = paramb;
    this.h = paramMap;
    paramb = paramMap.entrySet().iterator();
    while (paramb.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramb.next();
      List localList = (List)localEntry.getValue();
      if ((localList.size() == 1) && ("001".equals(localList.get(0))))
        this.H.add(localEntry.getKey());
      else
        this.G.addAll(localList);
    }
    if (this.G.remove("001"))
      b.log(Level.WARNING, "invalid metadata (country calling code was mapped to the non-geo entity as well as specific region(s))");
    this.E.addAll((Collection)paramMap.get(Integer.valueOf(1)));
  }

  private int a(String paramString, k paramk, StringBuilder paramStringBuilder, o paramo)
    throws NumberParseException
  {
    if (paramString.length() == 0)
      return 0;
    StringBuilder localStringBuilder = new StringBuilder(paramString);
    paramString = "NonMatch";
    if (paramk != null)
      paramString = paramk.m;
    Object localObject;
    if (localStringBuilder.length() != 0)
    {
      localObject = c.matcher(localStringBuilder);
      if (((Matcher)localObject).lookingAt())
      {
        localStringBuilder.delete(0, ((Matcher)localObject).end());
        a(localStringBuilder);
        paramString = p.a;
      }
    }
    int i1;
    while (paramString != p.d)
      if (localStringBuilder.length() <= 2)
      {
        throw new NumberParseException(d.c, "Phone number had an IDD, but after this was not long enough to be a viable phone number.");
        paramString = this.F.a(paramString);
        a(localStringBuilder);
        paramString = paramString.matcher(localStringBuilder);
        if (paramString.lookingAt())
        {
          i1 = paramString.end();
          paramString = q.matcher(localStringBuilder.substring(i1));
          if ((!paramString.find()) || (!f(paramString.group(1)).equals("0")))
            localStringBuilder.delete(0, i1);
        }
        for (i1 = 1; ; i1 = 0)
        {
          if (i1 == 0)
            break label211;
          paramString = p.b;
          break;
        }
        label211: paramString = p.d;
      }
      else
      {
        i1 = a(localStringBuilder, paramStringBuilder);
        if (i1 != 0)
        {
          paramo.a(i1);
          return i1;
        }
        throw new NumberParseException(d.a, "Country calling code supplied was not recognised.");
      }
    if (paramk != null)
    {
      i1 = paramk.l;
      paramString = String.valueOf(i1);
      localObject = localStringBuilder.toString();
      if (((String)localObject).startsWith(paramString))
      {
        paramString = new StringBuilder(((String)localObject).substring(paramString.length()));
        m localm = paramk.a;
        localObject = this.F.a(localm.a);
        a(paramString, paramk, null);
        paramk = this.F.a(localm.b);
        if (((!((Pattern)localObject).matcher(localStringBuilder).matches()) && (((Pattern)localObject).matcher(paramString).matches())) || (a(paramk, localStringBuilder.toString()) == h.d))
        {
          paramStringBuilder.append(paramString);
          paramo.a(i1);
          return i1;
        }
      }
    }
    paramo.a(0);
    return 0;
  }

  private int a(StringBuilder paramStringBuilder1, StringBuilder paramStringBuilder2)
  {
    if ((paramStringBuilder1.length() == 0) || (paramStringBuilder1.charAt(0) == '0'))
      return 0;
    int i2 = paramStringBuilder1.length();
    int i1 = 1;
    while ((i1 <= 3) && (i1 <= i2))
    {
      int i3 = Integer.parseInt(paramStringBuilder1.substring(0, i1));
      if (this.h.containsKey(Integer.valueOf(i3)))
      {
        paramStringBuilder2.append(paramStringBuilder1.substring(i1));
        return i3;
      }
      i1 += 1;
    }
    return 0;
  }

  private static int a(Pattern paramPattern, String paramString)
  {
    paramPattern = paramPattern.matcher(paramString);
    if (paramPattern.matches())
      return h.a;
    if (paramPattern.lookingAt())
      return h.d;
    return h.c;
  }

  public static e a()
  {
    try
    {
      if (C != null)
        break label6966;
      a locala1 = a;
      if (locala1 == null)
        throw new IllegalArgumentException("metadataLoader could not be null.");
    }
    finally
    {
    }
    Object localObject = new c(locala2);
    HashMap localHashMap = new HashMap(285);
    ArrayList localArrayList = new ArrayList(25);
    localArrayList.add("US");
    localArrayList.add("AG");
    localArrayList.add("AI");
    localArrayList.add("AS");
    localArrayList.add("BB");
    localArrayList.add("BM");
    localArrayList.add("BS");
    localArrayList.add("CA");
    localArrayList.add("DM");
    localArrayList.add("DO");
    localArrayList.add("GD");
    localArrayList.add("GU");
    localArrayList.add("JM");
    localArrayList.add("KN");
    localArrayList.add("KY");
    localArrayList.add("LC");
    localArrayList.add("MP");
    localArrayList.add("MS");
    localArrayList.add("PR");
    localArrayList.add("SX");
    localArrayList.add("TC");
    localArrayList.add("TT");
    localArrayList.add("VC");
    localArrayList.add("VG");
    localArrayList.add("VI");
    localHashMap.put(Integer.valueOf(1), localArrayList);
    localArrayList = new ArrayList(2);
    localArrayList.add("RU");
    localArrayList.add("KZ");
    localHashMap.put(Integer.valueOf(7), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("EG");
    localHashMap.put(Integer.valueOf(20), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("ZA");
    localHashMap.put(Integer.valueOf(27), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GR");
    localHashMap.put(Integer.valueOf(30), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("NL");
    localHashMap.put(Integer.valueOf(31), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BE");
    localHashMap.put(Integer.valueOf(32), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("FR");
    localHashMap.put(Integer.valueOf(33), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("ES");
    localHashMap.put(Integer.valueOf(34), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("HU");
    localHashMap.put(Integer.valueOf(36), localArrayList);
    localArrayList = new ArrayList(2);
    localArrayList.add("IT");
    localArrayList.add("VA");
    localHashMap.put(Integer.valueOf(39), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("RO");
    localHashMap.put(Integer.valueOf(40), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CH");
    localHashMap.put(Integer.valueOf(41), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("AT");
    localHashMap.put(Integer.valueOf(43), localArrayList);
    localArrayList = new ArrayList(4);
    localArrayList.add("GB");
    localArrayList.add("GG");
    localArrayList.add("IM");
    localArrayList.add("JE");
    localHashMap.put(Integer.valueOf(44), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("DK");
    localHashMap.put(Integer.valueOf(45), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SE");
    localHashMap.put(Integer.valueOf(46), localArrayList);
    localArrayList = new ArrayList(2);
    localArrayList.add("NO");
    localArrayList.add("SJ");
    localHashMap.put(Integer.valueOf(47), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PL");
    localHashMap.put(Integer.valueOf(48), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("DE");
    localHashMap.put(Integer.valueOf(49), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PE");
    localHashMap.put(Integer.valueOf(51), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MX");
    localHashMap.put(Integer.valueOf(52), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CU");
    localHashMap.put(Integer.valueOf(53), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("AR");
    localHashMap.put(Integer.valueOf(54), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BR");
    localHashMap.put(Integer.valueOf(55), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CL");
    localHashMap.put(Integer.valueOf(56), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CO");
    localHashMap.put(Integer.valueOf(57), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("VE");
    localHashMap.put(Integer.valueOf(58), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MY");
    localHashMap.put(Integer.valueOf(60), localArrayList);
    localArrayList = new ArrayList(3);
    localArrayList.add("AU");
    localArrayList.add("CC");
    localArrayList.add("CX");
    localHashMap.put(Integer.valueOf(61), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("ID");
    localHashMap.put(Integer.valueOf(62), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PH");
    localHashMap.put(Integer.valueOf(63), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("NZ");
    localHashMap.put(Integer.valueOf(64), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SG");
    localHashMap.put(Integer.valueOf(65), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TH");
    localHashMap.put(Integer.valueOf(66), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("JP");
    localHashMap.put(Integer.valueOf(81), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("KR");
    localHashMap.put(Integer.valueOf(82), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("VN");
    localHashMap.put(Integer.valueOf(84), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CN");
    localHashMap.put(Integer.valueOf(86), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TR");
    localHashMap.put(Integer.valueOf(90), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("IN");
    localHashMap.put(Integer.valueOf(91), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PK");
    localHashMap.put(Integer.valueOf(92), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("AF");
    localHashMap.put(Integer.valueOf(93), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("LK");
    localHashMap.put(Integer.valueOf(94), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MM");
    localHashMap.put(Integer.valueOf(95), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("IR");
    localHashMap.put(Integer.valueOf(98), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SS");
    localHashMap.put(Integer.valueOf(211), localArrayList);
    localArrayList = new ArrayList(2);
    localArrayList.add("MA");
    localArrayList.add("EH");
    localHashMap.put(Integer.valueOf(212), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("DZ");
    localHashMap.put(Integer.valueOf(213), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TN");
    localHashMap.put(Integer.valueOf(216), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("LY");
    localHashMap.put(Integer.valueOf(218), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GM");
    localHashMap.put(Integer.valueOf(220), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SN");
    localHashMap.put(Integer.valueOf(221), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MR");
    localHashMap.put(Integer.valueOf(222), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("ML");
    localHashMap.put(Integer.valueOf(223), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GN");
    localHashMap.put(Integer.valueOf(224), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CI");
    localHashMap.put(Integer.valueOf(225), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BF");
    localHashMap.put(Integer.valueOf(226), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("NE");
    localHashMap.put(Integer.valueOf(227), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TG");
    localHashMap.put(Integer.valueOf(228), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BJ");
    localHashMap.put(Integer.valueOf(229), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MU");
    localHashMap.put(Integer.valueOf(230), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("LR");
    localHashMap.put(Integer.valueOf(231), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SL");
    localHashMap.put(Integer.valueOf(232), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GH");
    localHashMap.put(Integer.valueOf(233), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("NG");
    localHashMap.put(Integer.valueOf(234), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TD");
    localHashMap.put(Integer.valueOf(235), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CF");
    localHashMap.put(Integer.valueOf(236), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CM");
    localHashMap.put(Integer.valueOf(237), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CV");
    localHashMap.put(Integer.valueOf(238), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("ST");
    localHashMap.put(Integer.valueOf(239), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GQ");
    localHashMap.put(Integer.valueOf(240), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GA");
    localHashMap.put(Integer.valueOf(241), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CG");
    localHashMap.put(Integer.valueOf(242), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CD");
    localHashMap.put(Integer.valueOf(243), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("AO");
    localHashMap.put(Integer.valueOf(244), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GW");
    localHashMap.put(Integer.valueOf(245), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("IO");
    localHashMap.put(Integer.valueOf(246), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("AC");
    localHashMap.put(Integer.valueOf(247), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SC");
    localHashMap.put(Integer.valueOf(248), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SD");
    localHashMap.put(Integer.valueOf(249), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("RW");
    localHashMap.put(Integer.valueOf(250), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("ET");
    localHashMap.put(Integer.valueOf(251), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SO");
    localHashMap.put(Integer.valueOf(252), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("DJ");
    localHashMap.put(Integer.valueOf(253), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("KE");
    localHashMap.put(Integer.valueOf(254), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TZ");
    localHashMap.put(Integer.valueOf(255), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("UG");
    localHashMap.put(Integer.valueOf(256), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BI");
    localHashMap.put(Integer.valueOf(257), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MZ");
    localHashMap.put(Integer.valueOf(258), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("ZM");
    localHashMap.put(Integer.valueOf(260), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MG");
    localHashMap.put(Integer.valueOf(261), localArrayList);
    localArrayList = new ArrayList(2);
    localArrayList.add("RE");
    localArrayList.add("YT");
    localHashMap.put(Integer.valueOf(262), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("ZW");
    localHashMap.put(Integer.valueOf(263), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("NA");
    localHashMap.put(Integer.valueOf(264), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MW");
    localHashMap.put(Integer.valueOf(265), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("LS");
    localHashMap.put(Integer.valueOf(266), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BW");
    localHashMap.put(Integer.valueOf(267), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SZ");
    localHashMap.put(Integer.valueOf(268), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("KM");
    localHashMap.put(Integer.valueOf(269), localArrayList);
    localArrayList = new ArrayList(2);
    localArrayList.add("SH");
    localArrayList.add("TA");
    localHashMap.put(Integer.valueOf(290), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("ER");
    localHashMap.put(Integer.valueOf(291), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("AW");
    localHashMap.put(Integer.valueOf(297), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("FO");
    localHashMap.put(Integer.valueOf(298), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GL");
    localHashMap.put(Integer.valueOf(299), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GI");
    localHashMap.put(Integer.valueOf(350), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PT");
    localHashMap.put(Integer.valueOf(351), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("LU");
    localHashMap.put(Integer.valueOf(352), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("IE");
    localHashMap.put(Integer.valueOf(353), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("IS");
    localHashMap.put(Integer.valueOf(354), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("AL");
    localHashMap.put(Integer.valueOf(355), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MT");
    localHashMap.put(Integer.valueOf(356), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CY");
    localHashMap.put(Integer.valueOf(357), localArrayList);
    localArrayList = new ArrayList(2);
    localArrayList.add("FI");
    localArrayList.add("AX");
    localHashMap.put(Integer.valueOf(358), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BG");
    localHashMap.put(Integer.valueOf(359), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("LT");
    localHashMap.put(Integer.valueOf(370), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("LV");
    localHashMap.put(Integer.valueOf(371), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("EE");
    localHashMap.put(Integer.valueOf(372), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MD");
    localHashMap.put(Integer.valueOf(373), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("AM");
    localHashMap.put(Integer.valueOf(374), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BY");
    localHashMap.put(Integer.valueOf(375), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("AD");
    localHashMap.put(Integer.valueOf(376), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MC");
    localHashMap.put(Integer.valueOf(377), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SM");
    localHashMap.put(Integer.valueOf(378), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("UA");
    localHashMap.put(Integer.valueOf(380), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("RS");
    localHashMap.put(Integer.valueOf(381), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("ME");
    localHashMap.put(Integer.valueOf(382), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("HR");
    localHashMap.put(Integer.valueOf(385), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SI");
    localHashMap.put(Integer.valueOf(386), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BA");
    localHashMap.put(Integer.valueOf(387), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MK");
    localHashMap.put(Integer.valueOf(389), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CZ");
    localHashMap.put(Integer.valueOf(420), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SK");
    localHashMap.put(Integer.valueOf(421), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("LI");
    localHashMap.put(Integer.valueOf(423), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("FK");
    localHashMap.put(Integer.valueOf(500), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BZ");
    localHashMap.put(Integer.valueOf(501), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GT");
    localHashMap.put(Integer.valueOf(502), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SV");
    localHashMap.put(Integer.valueOf(503), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("HN");
    localHashMap.put(Integer.valueOf(504), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("NI");
    localHashMap.put(Integer.valueOf(505), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CR");
    localHashMap.put(Integer.valueOf(506), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PA");
    localHashMap.put(Integer.valueOf(507), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PM");
    localHashMap.put(Integer.valueOf(508), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("HT");
    localHashMap.put(Integer.valueOf(509), localArrayList);
    localArrayList = new ArrayList(3);
    localArrayList.add("GP");
    localArrayList.add("BL");
    localArrayList.add("MF");
    localHashMap.put(Integer.valueOf(590), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BO");
    localHashMap.put(Integer.valueOf(591), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GY");
    localHashMap.put(Integer.valueOf(592), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("EC");
    localHashMap.put(Integer.valueOf(593), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GF");
    localHashMap.put(Integer.valueOf(594), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PY");
    localHashMap.put(Integer.valueOf(595), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MQ");
    localHashMap.put(Integer.valueOf(596), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SR");
    localHashMap.put(Integer.valueOf(597), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("UY");
    localHashMap.put(Integer.valueOf(598), localArrayList);
    localArrayList = new ArrayList(2);
    localArrayList.add("CW");
    localArrayList.add("BQ");
    localHashMap.put(Integer.valueOf(599), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TL");
    localHashMap.put(Integer.valueOf(670), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("NF");
    localHashMap.put(Integer.valueOf(672), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BN");
    localHashMap.put(Integer.valueOf(673), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("NR");
    localHashMap.put(Integer.valueOf(674), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PG");
    localHashMap.put(Integer.valueOf(675), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TO");
    localHashMap.put(Integer.valueOf(676), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SB");
    localHashMap.put(Integer.valueOf(677), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("VU");
    localHashMap.put(Integer.valueOf(678), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("FJ");
    localHashMap.put(Integer.valueOf(679), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PW");
    localHashMap.put(Integer.valueOf(680), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("WF");
    localHashMap.put(Integer.valueOf(681), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CK");
    localHashMap.put(Integer.valueOf(682), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("NU");
    localHashMap.put(Integer.valueOf(683), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("WS");
    localHashMap.put(Integer.valueOf(685), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("KI");
    localHashMap.put(Integer.valueOf(686), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("NC");
    localHashMap.put(Integer.valueOf(687), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TV");
    localHashMap.put(Integer.valueOf(688), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PF");
    localHashMap.put(Integer.valueOf(689), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TK");
    localHashMap.put(Integer.valueOf(690), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("FM");
    localHashMap.put(Integer.valueOf(691), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MH");
    localHashMap.put(Integer.valueOf(692), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("001");
    localHashMap.put(Integer.valueOf(800), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("001");
    localHashMap.put(Integer.valueOf(808), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("KP");
    localHashMap.put(Integer.valueOf(850), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("HK");
    localHashMap.put(Integer.valueOf(852), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MO");
    localHashMap.put(Integer.valueOf(853), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("KH");
    localHashMap.put(Integer.valueOf(855), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("LA");
    localHashMap.put(Integer.valueOf(856), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("001");
    localHashMap.put(Integer.valueOf(870), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("001");
    localHashMap.put(Integer.valueOf(878), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BD");
    localHashMap.put(Integer.valueOf(880), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("001");
    localHashMap.put(Integer.valueOf(881), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("001");
    localHashMap.put(Integer.valueOf(882), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("001");
    localHashMap.put(Integer.valueOf(883), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TW");
    localHashMap.put(Integer.valueOf(886), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("001");
    localHashMap.put(Integer.valueOf(888), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MV");
    localHashMap.put(Integer.valueOf(960), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("LB");
    localHashMap.put(Integer.valueOf(961), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("JO");
    localHashMap.put(Integer.valueOf(962), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SY");
    localHashMap.put(Integer.valueOf(963), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("IQ");
    localHashMap.put(Integer.valueOf(964), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("KW");
    localHashMap.put(Integer.valueOf(965), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SA");
    localHashMap.put(Integer.valueOf(966), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("YE");
    localHashMap.put(Integer.valueOf(967), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("OM");
    localHashMap.put(Integer.valueOf(968), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PS");
    localHashMap.put(Integer.valueOf(970), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("AE");
    localHashMap.put(Integer.valueOf(971), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("IL");
    localHashMap.put(Integer.valueOf(972), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BH");
    localHashMap.put(Integer.valueOf(973), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("QA");
    localHashMap.put(Integer.valueOf(974), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BT");
    localHashMap.put(Integer.valueOf(975), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MN");
    localHashMap.put(Integer.valueOf(976), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("NP");
    localHashMap.put(Integer.valueOf(977), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("001");
    localHashMap.put(Integer.valueOf(979), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TJ");
    localHashMap.put(Integer.valueOf(992), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TM");
    localHashMap.put(Integer.valueOf(993), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("AZ");
    localHashMap.put(Integer.valueOf(994), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GE");
    localHashMap.put(Integer.valueOf(995), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("KG");
    localHashMap.put(Integer.valueOf(996), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("UZ");
    localHashMap.put(Integer.valueOf(998), localArrayList);
    a(new e((b)localObject, localHashMap));
    label6966: localObject = C;
    return localObject;
  }

  public static String a(o paramo)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramo.g)
    {
      char[] arrayOfChar = new char[paramo.i];
      Arrays.fill(arrayOfChar, '0');
      localStringBuilder.append(new String(arrayOfChar));
    }
    localStringBuilder.append(paramo.c);
    return localStringBuilder.toString();
  }

  private static void a(e parame)
  {
    try
    {
      C = parame;
      return;
    }
    finally
    {
      parame = finally;
    }
    throw parame;
  }

  private static void a(String paramString, o paramo)
  {
    if ((paramString.length() > 1) && (paramString.charAt(0) == '0'))
    {
      paramo.f = true;
      paramo.g = true;
      int i1 = 1;
      while ((i1 < paramString.length() - 1) && (paramString.charAt(i1) == '0'))
        i1 += 1;
      if (i1 != 1)
      {
        paramo.h = true;
        paramo.i = i1;
      }
    }
  }

  private static void a(StringBuilder paramStringBuilder)
  {
    String str = paramStringBuilder.toString();
    StringBuilder localStringBuilder;
    if (s.matcher(str).matches())
    {
      Map localMap = l;
      localStringBuilder = new StringBuilder(str.length());
      int i1 = 0;
      while (i1 < str.length())
      {
        Character localCharacter = (Character)localMap.get(Character.valueOf(Character.toUpperCase(str.charAt(i1))));
        if (localCharacter != null)
          localStringBuilder.append(localCharacter);
        i1 += 1;
      }
    }
    for (str = localStringBuilder.toString(); ; str = f(str))
    {
      paramStringBuilder.replace(0, paramStringBuilder.length(), str);
      return;
    }
  }

  private boolean a(String paramString, m paramm)
  {
    Matcher localMatcher = this.F.a(paramm.a).matcher(paramString);
    return (this.F.a(paramm.b).matcher(paramString).matches()) && (localMatcher.matches());
  }

  private boolean a(StringBuilder paramStringBuilder1, k paramk, StringBuilder paramStringBuilder2)
  {
    int i1 = paramStringBuilder1.length();
    Object localObject = paramk.n;
    if ((i1 == 0) || (((String)localObject).length() == 0));
    Pattern localPattern;
    boolean bool;
    int i2;
    StringBuilder localStringBuilder;
    do
    {
      do
      {
        do
        {
          return false;
          localObject = this.F.a((String)localObject).matcher(paramStringBuilder1);
        }
        while (!((Matcher)localObject).lookingAt());
        localPattern = this.F.a(paramk.a.a);
        bool = localPattern.matcher(paramStringBuilder1).matches();
        i2 = ((Matcher)localObject).groupCount();
        paramk = paramk.o;
        if ((paramk != null) && (paramk.length() != 0) && (((Matcher)localObject).group(i2) != null))
          break;
      }
      while ((bool) && (!localPattern.matcher(paramStringBuilder1.substring(((Matcher)localObject).end())).matches()));
      if ((paramStringBuilder2 != null) && (i2 > 0) && (((Matcher)localObject).group(i2) != null))
        paramStringBuilder2.append(((Matcher)localObject).group(1));
      paramStringBuilder1.delete(0, ((Matcher)localObject).end());
      return true;
      localStringBuilder = new StringBuilder(paramStringBuilder1);
      localStringBuilder.replace(0, i1, ((Matcher)localObject).replaceFirst(paramk));
    }
    while ((bool) && (!localPattern.matcher(localStringBuilder.toString()).matches()));
    if ((paramStringBuilder2 != null) && (i2 > 1))
      paramStringBuilder2.append(((Matcher)localObject).group(1));
    paramStringBuilder1.replace(0, paramStringBuilder1.length(), localStringBuilder.toString());
    return true;
  }

  private static String b(StringBuilder paramStringBuilder)
  {
    Matcher localMatcher = v.matcher(paramStringBuilder);
    if ((localMatcher.find()) && (e(paramStringBuilder.substring(0, localMatcher.start()))))
    {
      int i1 = 1;
      int i2 = localMatcher.groupCount();
      while (i1 <= i2)
      {
        if (localMatcher.group(i1) != null)
        {
          String str = localMatcher.group(i1);
          paramStringBuilder.delete(localMatcher.start(), paramStringBuilder.length());
          return str;
        }
        i1 += 1;
      }
    }
    return "";
  }

  private static String d(String paramString)
  {
    String str1 = String.valueOf(String.valueOf(";ext=(\\p{Nd}{1,7})|[  \\t,]*(?:e?xt(?:ensi(?:ó?|ó))?n?|ｅ?ｘｔｎ?|["));
    paramString = String.valueOf(String.valueOf(paramString));
    String str2 = String.valueOf(String.valueOf("(\\p{Nd}{1,7})"));
    String str3 = String.valueOf(String.valueOf("\\p{Nd}"));
    return str1.length() + 48 + paramString.length() + str2.length() + str3.length() + str1 + paramString + "]|int|anexo|ｉｎｔ)[:\\.．]?[  \\t,-]*" + str2 + "#?|[- ]+(" + str3 + "{1,5})#";
  }

  private static boolean e(String paramString)
  {
    if (paramString.length() < 2)
      return false;
    return w.matcher(paramString).matches();
  }

  private static String f(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramString.length());
    paramString = paramString.toCharArray();
    int i2 = paramString.length;
    int i1 = 0;
    while (i1 < i2)
    {
      int i3 = Character.digit(paramString[i1], 10);
      if (i3 != -1)
        localStringBuilder.append(i3);
      i1 += 1;
    }
    return localStringBuilder.toString();
  }

  public final String a(o paramo, List<String> paramList)
  {
    paramo = a(paramo);
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      String str = (String)paramList.next();
      k localk = b(str);
      if (localk.q)
      {
        if (this.F.a(localk.r).matcher(paramo).lookingAt())
          return str;
      }
      else
      {
        int i1;
        if (a(paramo, localk.a))
          if (a(paramo, localk.e))
            i1 = g.e;
        while (i1 != g.l)
        {
          return str;
          if (a(paramo, localk.d))
            i1 = g.d;
          else if (a(paramo, localk.f))
            i1 = g.f;
          else if (a(paramo, localk.h))
            i1 = g.g;
          else if (a(paramo, localk.g))
            i1 = g.h;
          else if (a(paramo, localk.i))
            i1 = g.i;
          else if (a(paramo, localk.j))
            i1 = g.j;
          else if (a(paramo, localk.k))
            i1 = g.k;
          else if (a(paramo, localk.b))
          {
            if (localk.p)
              i1 = g.c;
            else if (a(paramo, localk.c))
              i1 = g.c;
            else
              i1 = g.a;
          }
          else if ((!localk.p) && (a(paramo, localk.c)))
            i1 = g.b;
          else
            i1 = g.l;
        }
      }
    }
    return null;
  }

  public final boolean a(String paramString)
  {
    return (paramString != null) && (this.G.contains(paramString));
  }

  public final k b(String paramString)
  {
    if (!a(paramString))
      return null;
    return this.D.a(paramString);
  }

  public final o c(String paramString)
    throws NumberParseException
  {
    int i2 = 0;
    o localo = new o();
    if (paramString == null)
      throw new NumberParseException(d.b, "The phone number supplied was null.");
    if (paramString.length() > 250)
      throw new NumberParseException(d.e, "The string supplied was too long to parse.");
    Object localObject3 = new StringBuilder();
    int i3 = paramString.indexOf(";phone-context=");
    if (i3 > 0)
    {
      i1 = i3 + 15;
      if (paramString.charAt(i1) == '+')
      {
        int i4 = paramString.indexOf(';', i1);
        if (i4 > 0)
          ((StringBuilder)localObject3).append(paramString.substring(i1, i4));
      }
      else
      {
        i1 = paramString.indexOf("tel:");
        if (i1 < 0)
          break label212;
        i1 += 4;
      }
      while (true)
      {
        ((StringBuilder)localObject3).append(paramString.substring(i1, i3));
        i1 = ((StringBuilder)localObject3).indexOf(";isub=");
        if (i1 > 0)
          ((StringBuilder)localObject3).delete(i1, ((StringBuilder)localObject3).length());
        if (e(((StringBuilder)localObject3).toString()))
          break label385;
        throw new NumberParseException(d.b, "The string supplied did not seem to be a phone number.");
        ((StringBuilder)localObject3).append(paramString.substring(i1));
        break;
        label212: i1 = 0;
      }
    }
    Object localObject1 = r.matcher(paramString);
    Object localObject4;
    if (((Matcher)localObject1).find())
    {
      localObject1 = paramString.substring(((Matcher)localObject1).start());
      localObject2 = e.matcher((CharSequence)localObject1);
      paramString = (String)localObject1;
      if (((Matcher)localObject2).find())
      {
        localObject1 = ((String)localObject1).substring(0, ((Matcher)localObject2).start());
        localObject2 = b;
        localObject4 = Level.FINER;
        paramString = String.valueOf(localObject1);
        if (paramString.length() != 0)
        {
          paramString = "Stripped trailing characters: ".concat(paramString);
          label310: ((Logger)localObject2).log((Level)localObject4, paramString);
          paramString = (String)localObject1;
        }
      }
      else
      {
        localObject2 = d.matcher(paramString);
        localObject1 = paramString;
        if (!((Matcher)localObject2).find());
      }
    }
    for (localObject1 = paramString.substring(0, ((Matcher)localObject2).start()); ; localObject1 = "")
    {
      ((StringBuilder)localObject3).append((String)localObject1);
      break;
      paramString = new String("Stripped trailing characters: ");
      break label310;
    }
    label385: paramString = ((StringBuilder)localObject3).toString();
    if ((!a(null)) && ((paramString == null) || (paramString.length() == 0) || (!c.matcher(paramString).lookingAt())));
    for (int i1 = 0; i1 == 0; i1 = 1)
      throw new NumberParseException(d.a, "Missing or invalid default region.");
    paramString = b((StringBuilder)localObject3);
    if (paramString.length() > 0)
    {
      if (paramString == null)
        throw new NullPointerException();
      localo.d = true;
      localo.e = paramString;
    }
    Object localObject2 = b(null);
    localObject1 = new StringBuilder();
    label909: 
    while (true)
    {
      try
      {
        i1 = a(((StringBuilder)localObject3).toString(), (k)localObject2, (StringBuilder)localObject1, localo);
        if (i1 == 0)
          break label729;
        paramString = (List)this.h.get(Integer.valueOf(i1));
        if (paramString == null)
        {
          paramString = "ZZ";
          if (paramString.equals(null))
            break label742;
          if (!"001".equals(paramString))
            break label720;
          if (this.h.containsKey(Integer.valueOf(i1)))
            break label706;
          paramString = null;
          if (((StringBuilder)localObject1).length() >= 2)
            break label748;
          throw new NumberParseException(d.d, "The string supplied is too short to be a phone number.");
        }
      }
      catch (NumberParseException paramString)
      {
        localObject4 = c.matcher(((StringBuilder)localObject3).toString());
        if ((paramString.a == d.a) && (((Matcher)localObject4).lookingAt()))
        {
          i1 = a(((StringBuilder)localObject3).substring(((Matcher)localObject4).end()), (k)localObject2, (StringBuilder)localObject1, localo);
          if (i1 != 0)
            break label909;
          throw new NumberParseException(d.a, "Could not interpret numbers after plus-sign.");
        }
        throw new NumberParseException(paramString.a, paramString.getMessage());
      }
      paramString = (String)paramString.get(0);
      continue;
      label706: paramString = this.D.a(i1);
      continue;
      label720: paramString = b(paramString);
      continue;
      label729: a((StringBuilder)localObject3);
      ((StringBuilder)localObject1).append((CharSequence)localObject3);
      label742: paramString = (String)localObject2;
      continue;
      label748: if (paramString != null)
      {
        localObject3 = new StringBuilder();
        localObject2 = new StringBuilder((CharSequence)localObject1);
        a((StringBuilder)localObject2, paramString, (StringBuilder)localObject3);
        localObject3 = ((StringBuilder)localObject2).toString();
        i1 = i2;
        if (a(this.F.a(paramString.a.b), (String)localObject3) == h.c)
          i1 = 1;
        if (i1 != 0);
      }
      for (paramString = (String)localObject2; ; paramString = (String)localObject1)
      {
        i1 = paramString.length();
        if (i1 < 2)
          throw new NumberParseException(d.d, "The string supplied is too short to be a phone number.");
        if (i1 > 17)
          throw new NumberParseException(d.e, "The string supplied is too long to be a phone number.");
        a(paramString.toString(), localo);
        long l1 = Long.parseLong(paramString.toString());
        localo.b = true;
        localo.c = l1;
        return localo;
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.i18n.phonenumbers.e
 * JD-Core Version:    0.6.2
 */