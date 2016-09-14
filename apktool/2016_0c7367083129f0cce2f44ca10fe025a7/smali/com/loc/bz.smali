.class public final Lcom/loc/bz;
.super Ljava/lang/Object;
.source "APS.java"


# static fields
.field private static ad:I


# instance fields
.field private volatile A:J

.field private B:J

.field private C:J

.field private volatile D:Z

.field private E:Z

.field private F:J

.field private volatile G:J

.field private H:I

.field private volatile I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Lcom/loc/dd;

.field private volatile L:Ljava/util/Timer;

.field private volatile M:Ljava/util/TimerTask;

.field private N:I

.field private volatile O:Ljava/lang/Object;

.field private P:Z

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:J

.field private volatile T:J

.field private volatile U:Ljava/lang/String;

.field private V:Lcom/loc/cl;

.field private W:Lcom/loc/da;

.field private X:Ljava/lang/StringBuilder;

.field private Y:Z

.field private Z:Z

.field volatile a:Landroid/content/Context;

.field private aa:Z

.field private ab:Z

.field private volatile ac:Z

.field private ae:J

.field private af:I

.field private ag:Ljava/lang/String;

.field private ah:Ljava/lang/String;

.field private ai:Z

.field b:Lorg/json/JSONObject;

.field c:Ljava/lang/Object;

.field d:Lcom/loc/cd;

.field volatile e:I

.field f:Z

.field volatile g:Z

.field h:Ljava/lang/Object;

.field public i:Z

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field volatile l:Z

.field m:I

.field n:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field o:Z

.field p:Lcom/loc/cb;

.field q:Ljava/lang/StringBuilder;

.field private r:Landroid/net/ConnectivityManager;

.field private volatile s:Lcom/loc/cp;

.field private volatile t:Lcom/loc/cm;

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private volatile v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private x:Lcom/loc/cc;

.field private volatile y:Landroid/net/wifi/WifiInfo;

.field private volatile z:Lcom/autonavi/aps/amapapi/model/AmapLoc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/loc/bz;->ad:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v6, -0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/loc/bz;->a:Landroid/content/Context;

    iput-object v1, p0, Lcom/loc/bz;->r:Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/loc/bz;->s:Lcom/loc/cp;

    iput-object v1, p0, Lcom/loc/bz;->t:Lcom/loc/cm;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/bz;->u:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/bz;->v:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/loc/bz;->w:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/loc/bz;->x:Lcom/loc/cc;

    iput-object v1, p0, Lcom/loc/bz;->y:Landroid/net/wifi/WifiInfo;

    iput-object v1, p0, Lcom/loc/bz;->b:Lorg/json/JSONObject;

    iput-object v1, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iput-wide v4, p0, Lcom/loc/bz;->A:J

    iput-wide v4, p0, Lcom/loc/bz;->B:J

    iput-wide v4, p0, Lcom/loc/bz;->C:J

    iput-boolean v2, p0, Lcom/loc/bz;->D:Z

    iput-boolean v2, p0, Lcom/loc/bz;->E:Z

    iput-wide v4, p0, Lcom/loc/bz;->F:J

    iput-wide v4, p0, Lcom/loc/bz;->G:J

    iput v2, p0, Lcom/loc/bz;->H:I

    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/loc/bz;->I:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bz;->J:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bz;->K:Lcom/loc/dd;

    iput-object v1, p0, Lcom/loc/bz;->L:Ljava/util/Timer;

    iput-object v1, p0, Lcom/loc/bz;->M:Ljava/util/TimerTask;

    iput v2, p0, Lcom/loc/bz;->N:I

    iput-object v1, p0, Lcom/loc/bz;->c:Ljava/lang/Object;

    iput-object v1, p0, Lcom/loc/bz;->O:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/loc/bz;->P:Z

    iput-object v1, p0, Lcom/loc/bz;->Q:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bz;->R:Ljava/lang/String;

    iput-wide v4, p0, Lcom/loc/bz;->S:J

    iput-wide v4, p0, Lcom/loc/bz;->T:J

    iput-object v1, p0, Lcom/loc/bz;->U:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bz;->V:Lcom/loc/cl;

    iput-object v1, p0, Lcom/loc/bz;->W:Lcom/loc/da;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    iput v6, p0, Lcom/loc/bz;->e:I

    iput-boolean v2, p0, Lcom/loc/bz;->f:Z

    iput-boolean v3, p0, Lcom/loc/bz;->Y:Z

    iput-boolean v3, p0, Lcom/loc/bz;->Z:Z

    iput-boolean v3, p0, Lcom/loc/bz;->g:Z

    iput-boolean v2, p0, Lcom/loc/bz;->aa:Z

    iput-boolean v2, p0, Lcom/loc/bz;->ab:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/bz;->h:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/loc/bz;->i:Z

    const-string v0, "com.data.carrier_v4.CollectorManager"

    iput-object v0, p0, Lcom/loc/bz;->j:Ljava/lang/String;

    const-string v0, "com.autonavi.aps.amapapi.offline.Off"

    iput-object v0, p0, Lcom/loc/bz;->k:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/loc/bz;->ac:Z

    iput-boolean v2, p0, Lcom/loc/bz;->l:Z

    const/16 v0, 0xc

    iput v0, p0, Lcom/loc/bz;->m:I

    iput-object v1, p0, Lcom/loc/bz;->n:Ljava/util/TreeMap;

    iput-boolean v3, p0, Lcom/loc/bz;->o:Z

    new-instance v0, Lcom/loc/cb;

    invoke-direct {v0, p0}, Lcom/loc/cb;-><init>(Lcom/loc/bz;)V

    iput-object v0, p0, Lcom/loc/bz;->p:Lcom/loc/cb;

    iput-wide v4, p0, Lcom/loc/bz;->ae:J

    iput v6, p0, Lcom/loc/bz;->af:I

    iput-object v1, p0, Lcom/loc/bz;->ag:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bz;->ah:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bz;->q:Ljava/lang/StringBuilder;

    iput-boolean v2, p0, Lcom/loc/bz;->ai:Z

    return-void
.end method

.method static synthetic a(Lcom/loc/bz;J)J
    .locals 1

    iput-wide p1, p0, Lcom/loc/bz;->G:J

    return-wide p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/loc/bz;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bz;->O:Ljava/lang/Object;

    const-string v1, "getPureOfflineLocation"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/loc/dh;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(ZZ)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 0
    new-instance v8, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v8}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/loc/bz;->A:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->a:Landroid/content/Context;

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    const-string v3, "context is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v8}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setErrorCode(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setLocationDetail(Ljava/lang/String;)V

    :goto_0
    return-object v8

    .line 30000
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->t:Lcom/loc/cm;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/loc/bz;->D:Z

    invoke-virtual {v2, v3}, Lcom/loc/cm;->a(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->t:Lcom/loc/cm;

    .line 31000
    invoke-virtual {v2}, Lcom/loc/cm;->c()V

    .line 30000
    :cond_1
    const-string v2, "0"

    const-string v12, "0"

    const-string v13, "0"

    const-string v14, "0"

    const-string v15, "0"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bz;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/loc/dx;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    const-string v3, ""

    sput-object v3, Lcom/loc/cr;->c:Ljava/lang/String;

    const/16 v3, -0x8000

    const/16 v4, 0x7fff

    invoke-static {v3, v4}, Lcom/loc/dn;->a(II)I

    move-result v17

    const-string v5, ""

    const-string v4, ""

    const-string v3, ""

    const-string v7, "api_serverSDK_130905"

    const-string v6, "S128DF1572465B890OE3F7A13167KLEI"

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/loc/bz;->Z:Z

    if-nez v9, :cond_30

    const-string v7, "UC_nlp_20131029"

    const-string v6, "BKZCHMBBSSUK7U8GLUKHBB56CCFF78U"

    move-object v10, v6

    move-object v11, v7

    :goto_1
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/loc/bz;->t:Lcom/loc/cm;

    .line 32000
    iget v0, v6, Lcom/loc/cm;->b:I

    move/from16 v21, v0

    .line 33000
    iget-object v7, v6, Lcom/loc/cm;->e:Landroid/telephony/TelephonyManager;

    .line 34000
    iget-object v0, v6, Lcom/loc/cm;->c:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    .line 30000
    const/4 v6, 0x2

    move/from16 v0, v21

    if-ne v0, v6, :cond_2f

    const-string v2, "1"

    move-object v9, v2

    :goto_2
    if-eqz v7, :cond_5

    sget-object v2, Lcom/loc/cr;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_2

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/loc/eh;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/loc/cr;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_3
    :try_start_2
    sget-object v2, Lcom/loc/cr;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "888888888888888"

    sput-object v2, Lcom/loc/cr;->a:Ljava/lang/String;

    :cond_3
    sget-object v2, Lcom/loc/cr;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    if-eqz v2, :cond_4

    :try_start_3
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/loc/cr;->b:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_4
    :try_start_4
    sget-object v2, Lcom/loc/cr;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "888888888888888"

    sput-object v2, Lcom/loc/cr;->b:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :cond_5
    const/4 v6, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->r:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v2

    :goto_5
    :try_start_6
    invoke-static {v2}, Lcom/loc/dn;->a(Landroid/net/NetworkInfo;)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_9

    invoke-static {v7}, Lcom/loc/dn;->b(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/loc/bz;->r()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->y:Landroid/net/wifi/WifiInfo;

    invoke-static {v2}, Lcom/loc/bz;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "2"

    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/loc/bz;->r()Z

    move-result v5

    if-nez v5, :cond_2e

    invoke-direct/range {p0 .. p0}, Lcom/loc/bz;->p()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/loc/bz;->u:Ljava/util/ArrayList;

    if-eqz v5, :cond_2e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/loc/bz;->u:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move-object v6, v2

    move-object v7, v4

    .line 35000
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->b:Lorg/json/JSONObject;

    const-string v4, "poiid"

    invoke-static {v2, v4}, Lcom/loc/dn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    move-result v2

    if-eqz v2, :cond_c

    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->b:Lorg/json/JSONObject;

    const-string v4, "poiid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bz;->J:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    .line 30000
    :goto_8
    :try_start_8
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    packed-switch v21, :pswitch_data_0

    const-string v2, "resetCdmaData"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/loc/bz;->a(Ljava/lang/String;)V

    move-object v2, v3

    :goto_9
    const/4 v3, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-object v5, v2

    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/loc/bz;->r()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->y:Landroid/net/wifi/WifiInfo;

    invoke-static {v2}, Lcom/loc/bz;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->y:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->y:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    const/16 v3, -0x80

    if-ge v2, v3, :cond_11

    const/4 v2, 0x0

    :cond_6
    :goto_b
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->y:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    move-result-object v3

    const/16 v4, 0x20

    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->y:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    const-string v22, "UTF-8"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5

    :goto_c
    const/16 v4, 0x20

    if-lt v2, v4, :cond_2c

    :try_start_a
    const-string v2, "unkwn"

    :goto_d
    const-string v3, "*"

    const-string v4, "."

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bz;->u:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xf

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v3, v2

    :goto_e
    if-ge v3, v4, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->u:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v0, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v22, "*"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_e

    :catch_0
    move-exception v2

    const-string v6, "APS"

    const-string v23, "getApsReq part4"

    move-object/from16 v0, v23

    invoke-static {v2, v6, v0}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_3

    .line 0
    :catch_1
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get parames error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-virtual {v8, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setErrorCode(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setLocationDetail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 30000
    :catch_2
    move-exception v2

    :try_start_b
    const-string v6, "APS"

    const-string v23, "getApsReq part2"

    move-object/from16 v0, v23

    invoke-static {v2, v6, v0}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_3
    move-exception v2

    const-string v23, "APS"

    const-string v24, "getApsReq part"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v2, v0, v1}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v6

    goto/16 :goto_5

    :cond_8
    const-string v2, "1"

    goto/16 :goto_6

    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bz;->y:Landroid/net/wifi/WifiInfo;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    move-object v6, v4

    move-object v7, v5

    goto/16 :goto_7

    .line 35000
    :cond_a
    :try_start_c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x20

    if-le v4, v5, :cond_b

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bz;->J:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_8

    :catch_4
    move-exception v2

    :try_start_d
    const-string v4, "APS"

    const-string v5, "setPoiid"

    invoke-static {v2, v4, v5}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_8

    :cond_b
    :try_start_e
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bz;->J:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_8

    :cond_c
    const/4 v2, 0x0

    :try_start_f
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bz;->J:Ljava/lang/String;

    goto/16 :goto_8

    .line 30000
    :pswitch_0
    const-string v2, "resetCdmaData"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/loc/bz;->a(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/cl;

    const/4 v3, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v3, "<mcc>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/loc/cl;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</mcc>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<mnc>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/loc/cl;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</mnc>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<lac>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/loc/cl;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</lac>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<cellid>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/loc/cl;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "</cellid>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<signal>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, v2, Lcom/loc/cl;->j:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</signal>"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    move v4, v2

    :goto_f
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_e

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/cl;

    iget v0, v2, Lcom/loc/cl;->c:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Lcom/loc/cl;->d:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/loc/cl;->j:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v4, v2, :cond_d

    const-string v2, "*"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_f

    :cond_e
    move-object v2, v3

    goto/16 :goto_9

    :pswitch_1
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/cl;

    const/4 v3, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v3, "<mcc>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/loc/cl;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</mcc>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<sid>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/loc/cl;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</sid>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<nid>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/loc/cl;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</nid>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<bid>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/loc/cl;->i:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</bid>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/loc/cl;->f:I

    if-lez v3, :cond_10

    iget v3, v2, Lcom/loc/cl;->e:I

    if-lez v3, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/loc/bz;->y()Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bz;->O:Ljava/lang/Object;

    const-string v4, "setCdmaLatLon"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    iget v0, v2, Lcom/loc/cl;->e:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    iget v0, v2, Lcom/loc/cl;->f:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v22

    invoke-static {v3, v4, v0}, Lcom/loc/dh;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    const-string v3, "<lon>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/loc/cl;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</lon>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<lat>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/loc/cl;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</lat>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_10
    const-string v3, "<signal>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, v2, Lcom/loc/cl;->j:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</signal>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_9

    :cond_10
    const-string v3, "resetCdmaData"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/loc/bz;->a(Ljava/lang/String;)V

    goto :goto_10

    :cond_11
    const/16 v3, 0x7f

    if-le v2, v3, :cond_6

    const/4 v2, 0x0

    goto/16 :goto_b

    :catch_5
    move-exception v2

    const-string v22, "APS"

    const-string v23, "getApsReq"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v2, v0, v1}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v2, v4

    goto/16 :goto_c

    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/loc/bz;->p()V

    :cond_13
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_11
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->b:Lorg/json/JSONObject;

    const-string v4, "reversegeo"

    invoke-static {v2, v4}, Lcom/loc/dn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_1

    move-result v2

    if-eqz v2, :cond_18

    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->b:Lorg/json/JSONObject;

    const-string v4, "reversegeo"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_6

    move-result v2

    :goto_12
    if-nez v2, :cond_19

    :try_start_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->K:Lcom/loc/dd;

    const/4 v3, 0x2

    iput-short v3, v2, Lcom/loc/dd;->b:S

    :goto_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->b:Lorg/json/JSONObject;

    const-string v3, "multi"

    invoke-static {v2, v3}, Lcom/loc/dn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_1

    move-result v2

    if-eqz v2, :cond_14

    :try_start_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->b:Lorg/json/JSONObject;

    const-string v3, "multi"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->K:Lcom/loc/dd;

    const/4 v3, 0x1

    iput-short v3, v2, Lcom/loc/dd;->b:S
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_7

    :cond_14
    :goto_14
    :try_start_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->K:Lcom/loc/dd;

    iput-object v11, v2, Lcom/loc/dd;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->K:Lcom/loc/dd;

    iput-object v10, v2, Lcom/loc/dd;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->K:Lcom/loc/dd;

    invoke-static {}, Lcom/loc/dn;->d()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/dd;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->K:Lcom/loc/dd;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "android"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/loc/dn;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/dd;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->K:Lcom/loc/dd;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bz;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/loc/dn;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/dd;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->K:Lcom/loc/dd;

    iput-object v9, v2, Lcom/loc/dd;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->K:Lcom/loc/dd;

    iput-object v12, v2, Lcom/loc/dd;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bz;->K:Lcom/loc/dd;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/loc/bz;->E:Z

    if-eqz v2, :cond_1a

    const-string v2, "1"

    :goto_15
    iput-object v2, v3, Lcom/loc/dd;->k:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->K:Lcom/loc/dd;

    iput-object v13, v2, Lcom/loc/dd;->l:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->K:Lcom/loc/dd;

    iput-object v14, v2, Lcom/loc/dd;->m:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->K:Lcom/loc/dd;

    iput-object v15, v2, Lcom/loc/dd;->n:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->K:Lcom/loc/dd;

    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/loc/dd;->o:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->K:Lcom/loc/dd;

    sget-object v3, Lcom/loc/cr;->a:Ljava/lang/String;

    iput-object v3, v2, Lcom/loc/dd;->p:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->K:Lcom/loc/dd;

    sget-object v3, Lcom/loc/cr;->b:Ljava/lang/String;

    iput-object v3, v2, Lcom/loc/dd;->q:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->K:Lcom/loc/dd;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/dd;->s:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->K:Lcom/loc/dd;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bz;->I:Ljava/lang/String;

    iput-object v3, v2, Lcom/loc/dd;->t:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->K:Lcom/loc/dd;

    .line 36000
    const-string v3, "2.8.0"

    .line 30000
    iput-object v3, v2, Lcom/loc/dd;->v:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->K:Lcom/loc/dd;

    invoke-direct/range {p0 .. p0}, Lcom/loc/bz;->w()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/dd;->w:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->K:Lcom/loc/dd;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bz;->J:Ljava/lang/String;

    iput-object v3, v2, Lcom/loc/dd;->F:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->K:Lcom/loc/dd;

    sget-object v3, Lcom/loc/cr;->c:Ljava/lang/String;

    iput-object v3, v2, Lcom/loc/dd;->u:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->K:Lcom/loc/dd;

    iput-object v7, v2, Lcom/loc/dd;->x:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->K:Lcom/loc/dd;

    iput-object v6, v2, Lcom/loc/dd;->y:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->K:Lcom/loc/dd;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/dd;->z:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->K:Lcom/loc/dd;

    iput-object v5, v2, Lcom/loc/dd;->A:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->K:Lcom/loc/dd;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/dd;->B:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->K:Lcom/loc/dd;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/dd;->D:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->K:Lcom/loc/dd;

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/loc/bz;->G:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/dd;->E:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->K:Lcom/loc/dd;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/dd;->C:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_1

    .line 0
    new-instance v11, Lcom/loc/dc;

    invoke-direct {v11}, Lcom/loc/dc;-><init>()V

    const/4 v10, 0x0

    const-string v9, ""

    :try_start_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->W:Lcom/loc/da;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bz;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/bz;->b:Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/loc/bz;->K:Lcom/loc/dd;

    invoke-static {}, Lcom/loc/cr;->a()Ljava/lang/String;

    move-result-object v6

    move/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/loc/da;->a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/loc/dd;Ljava/lang/String;Z)Lcom/loc/br;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->W:Lcom/loc/da;

    .line 37000
    iget v5, v2, Lcom/loc/da;->c:I

    .line 0
    if-eqz v3, :cond_2b

    iget-object v2, v3, Lcom/loc/br;->a:[B

    iget-object v4, v3, Lcom/loc/br;->c:Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_8

    :goto_16
    int-to-long v6, v5

    :try_start_15
    invoke-virtual {v8, v6, v7}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setNetUseTime(J)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_9

    if-nez p1, :cond_2a

    if-eqz v2, :cond_15

    array-length v3, v2

    if-nez v3, :cond_1c

    :cond_15
    const/4 v2, 0x4

    invoke-virtual {v8, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setErrorCode(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    const-string v3, "please check the network"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, " #csid:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setLocationDetail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 30000
    :cond_17
    :try_start_16
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    :catch_6
    move-exception v2

    const-string v4, "APS"

    const-string v22, "getApsReq part"

    move-object/from16 v0, v22

    invoke-static {v2, v4, v0}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    move v2, v3

    goto/16 :goto_12

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->K:Lcom/loc/dd;

    const/4 v3, 0x0

    iput-short v3, v2, Lcom/loc/dd;->b:S

    goto/16 :goto_13

    :catch_7
    move-exception v2

    const-string v3, "APS"

    const-string v4, "getApsReq"

    invoke-static {v2, v3, v4}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_1a
    const-string v2, "0"
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_1

    goto/16 :goto_15

    .line 0
    :catch_8
    move-exception v2

    move-object v2, v9

    :goto_17
    const/4 v3, 0x4

    invoke-virtual {v8, v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setErrorCode(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    const-string v4, "please check the network"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " #csid:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setLocationDetail(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1c
    new-instance v3, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v3, v2, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v6, "\"status\":\"0\""

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-virtual {v11, v3}, Lcom/loc/dc;->a(Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v8

    int-to-long v2, v5

    invoke-virtual {v8, v2, v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setNetUseTime(J)V

    goto/16 :goto_0

    :cond_1d
    invoke-static {v2}, Lcom/loc/cq;->a([B)[B

    move-result-object v2

    if-nez v2, :cond_1f

    const/4 v2, 0x6

    invoke-virtual {v8, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setErrorCode(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    const-string v3, "decrypt response data error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, " #csid:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setLocationDetail(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1f
    invoke-virtual {v11, v2}, Lcom/loc/dc;->a([B)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v3

    int-to-long v6, v5

    invoke-virtual {v3, v6, v7}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setNetUseTime(J)V

    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getErrorCode()I

    move-result v2

    if-eqz v2, :cond_21

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getLocationDetail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " #csid:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setLocationDetail(Ljava/lang/String;)V

    :cond_20
    move-object v8, v3

    goto/16 :goto_0

    :cond_21
    invoke-static {v3}, Lcom/loc/dn;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getExtra()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_22

    :cond_22
    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getErrorCode()I

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getLocationType()I

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "-5"

    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getRetype()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "1"

    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getRetype()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "2"

    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getRetype()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "14"

    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getRetype()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "24"

    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getRetype()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "-1"

    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getRetype()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    :cond_23
    const/4 v2, 0x5

    invoke-virtual {v3, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setLocationType(I)V

    :goto_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getRetype()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " #csid:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setLocationDetail(Ljava/lang/String;)V

    :cond_25
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/loc/bz;->Z:Z

    invoke-virtual {v3, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setOffset(Z)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/loc/bz;->Y:Z

    invoke-virtual {v3, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setReversegeo(Z)V

    move-object v2, v3

    :goto_19
    move-object v8, v2

    goto/16 :goto_0

    :cond_26
    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getRdesc()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bz;->Q:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {v3, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setErrorCode(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "location faile retype:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getRetype()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " rdesc:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->Q:Ljava/lang/String;

    if-eqz v2, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->Q:Ljava/lang/String;

    :goto_1a
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " #csid:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setLocationDetail(Ljava/lang/String;)V

    move-object v8, v3

    goto/16 :goto_0

    :cond_28
    const-string v2, "null"

    goto :goto_1a

    :cond_29
    const/4 v2, 0x6

    invoke-virtual {v3, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setLocationType(I)V

    goto/16 :goto_18

    :catch_9
    move-exception v2

    move-object v2, v4

    goto/16 :goto_17

    :cond_2a
    move-object v2, v8

    goto :goto_19

    :cond_2b
    move-object v4, v9

    move-object v2, v10

    goto/16 :goto_16

    :cond_2c
    move-object v2, v3

    goto/16 :goto_d

    :cond_2d
    move-object v5, v3

    goto/16 :goto_a

    :cond_2e
    move-object v6, v2

    move-object v7, v4

    goto/16 :goto_7

    :cond_2f
    move-object v9, v2

    goto/16 :goto_2

    :cond_30
    move-object v10, v6

    move-object v11, v7

    goto/16 :goto_1

    .line 30000
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/loc/bz;)Lcom/loc/cp;
    .locals 1

    iget-object v0, p0, Lcom/loc/bz;->s:Lcom/loc/cp;

    return-object v0
.end method

.method static synthetic a(Lcom/loc/bz;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/loc/bz;->v:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/loc/bz;I)V
    .locals 9

    .prologue
    const v1, 0x282fffff

    const v0, 0x42fffff

    const/4 v8, 0x3

    .line 0
    .line 44000
    invoke-virtual {p0}, Lcom/loc/bz;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/loc/de;->u()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    move v1, v0

    :cond_2
    :goto_1
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/loc/bz;->c:Ljava/lang/Object;

    const-string v2, "callBackWrapData"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 45000
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "e"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "d"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "u"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 44000
    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/loc/dh;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/loc/bz;->c:Ljava/lang/Object;

    const-string v2, "getReportDate"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/loc/dh;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_3

    :try_start_2
    check-cast v0, [B

    check-cast v0, [B

    iget-object v2, p0, Lcom/loc/bz;->a:Landroid/content/Context;

    const-string v3, "http://cgicol.amap.com/collection/writedata?ver=v1.0_ali&"

    invoke-static {v0, v2, v3}, Lcom/loc/da;->a([BLandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/loc/bz;->d()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    if-eqz v2, :cond_3

    :try_start_3
    iget-object v2, p0, Lcom/loc/bz;->c:Ljava/lang/Object;

    const-string v3, "setUploadResult"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/loc/dh;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/loc/bz;->N:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_4
    :try_start_4
    invoke-virtual {p0}, Lcom/loc/bz;->f()V

    invoke-virtual {p0}, Lcom/loc/bz;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/loc/bz;->t()I

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/loc/bz;->u()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "up"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    move v1, v0

    goto/16 :goto_1

    :pswitch_2
    :try_start_5
    invoke-direct {p0}, Lcom/loc/bz;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7c2fffff

    move v1, v0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v0

    const/4 v0, 0x0

    goto :goto_3

    :catch_3
    move-exception v0

    const/4 v0, 0x3

    iput v0, p0, Lcom/loc/bz;->N:I

    goto :goto_4

    :cond_4
    iget v0, p0, Lcom/loc/bz;->N:I

    if-lt v0, v8, :cond_0

    invoke-direct {p0}, Lcom/loc/bz;->u()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/loc/bz;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/bz;->O:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/loc/dh;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/bz;->O:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bz;->O:Ljava/lang/Object;

    const-string v1, "stopOff"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/loc/dh;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/bz;->l:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(I)Z
    .locals 4

    const/16 v0, 0x14

    const/16 v1, 0x14

    :try_start_0
    invoke-static {p0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v1

    const-string v2, "APS"

    const-string v3, "wifiSigFine"

    invoke-static {v1, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Landroid/net/wifi/WifiInfo;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "00:00:00:00:00:00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    const-string v3, " :"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private declared-synchronized b(Z)Ljava/lang/StringBuilder;
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/bz;->t:Lcom/loc/cm;

    iget-boolean v3, p0, Lcom/loc/bz;->D:Z

    if-eqz v3, :cond_0

    .line 25000
    invoke-virtual {v0}, Lcom/loc/cm;->d()V

    .line 0
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v3, 0x2bc

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 26000
    iget v3, v0, Lcom/loc/cm;->b:I

    .line 27000
    iget-object v4, v0, Lcom/loc/cm;->c:Ljava/util/ArrayList;

    .line 0
    packed-switch v3, :pswitch_data_0

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/loc/bz;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/loc/bz;->I:Ljava/lang/String;

    const-string v3, "00:00:00:00:00:00"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/loc/bz;->y:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/loc/bz;->y:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bz;->I:Ljava/lang/String;

    .line 28000
    iget-object v0, p0, Lcom/loc/bz;->a:Landroid/content/Context;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/bz;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/loc/bz;->a:Landroid/content/Context;

    const-string v3, "pref"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    const/4 v3, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/loc/bz;->I:Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/ej;->a([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_0
    :try_start_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "smac"

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 0
    :cond_4
    iget-object v0, p0, Lcom/loc/bz;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/loc/bz;->I:Ljava/lang/String;

    :cond_5
    invoke-direct {p0}, Lcom/loc/bz;->r()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, ""

    iget-object v3, p0, Lcom/loc/bz;->y:Landroid/net/wifi/WifiInfo;

    invoke-static {v3}, Lcom/loc/bz;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v0, p0, Lcom/loc/bz;->y:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_1
    iget-object v0, p0, Lcom/loc/bz;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v1

    :goto_2
    if-ge v3, v6, :cond_7

    iget-object v0, p0, Lcom/loc/bz;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v7, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v0, "nb"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v0, "access"

    move v1, v2

    :cond_6
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "#%s,%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v7, 0x1

    aput-object v0, v10, v7

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :pswitch_0
    move v3, v2

    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    const-string v0, "#"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/cl;

    iget-object v0, v0, Lcom/loc/cl;->b:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/cl;

    iget v0, v0, Lcom/loc/cl;->c:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/cl;

    iget v0, v0, Lcom/loc/cl;->d:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 28000
    :catch_0
    move-exception v0

    const-string v6, "APS"

    const-string v7, "setSmac"

    invoke-static {v0, v6, v7}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto/16 :goto_0

    .line 0
    :cond_7
    if-nez v1, :cond_8

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "#"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",access"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_9

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    monitor-exit p0

    return-object v5

    :cond_a
    :try_start_3
    invoke-direct {p0}, Lcom/loc/bz;->p()V

    iget-object v0, p0, Lcom/loc/bz;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/loc/bz;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_b
    move-object v4, v0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/loc/bz;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/loc/bz;->v:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/loc/bz;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bz;->O:Ljava/lang/Object;

    const-string v1, "setLastLoc"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/loc/dh;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/loc/bz;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/bz;->p()V

    return-void
.end method

.method static synthetic d(Lcom/loc/bz;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/loc/bz;->c:Ljava/lang/Object;

    return-object v0
.end method

.method private e(Landroid/content/Context;)V
    .locals 6

    :try_start_0
    const-string v0, "OfflineLocation"

    const-string v1, "1.0.0"

    invoke-static {v0, v1}, Lcom/loc/cr;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/loc/eo;

    move-result-object v1

    iget-object v0, p0, Lcom/loc/bz;->O:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/loc/bz;->k:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/loc/ae;->a(Landroid/content/Context;Lcom/loc/eo;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bz;->O:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "initOffLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/loc/bz;)V
    .locals 0

    invoke-virtual {p0}, Lcom/loc/bz;->g()V

    return-void
.end method

.method static synthetic f(Lcom/loc/bz;)Z
    .locals 1

    invoke-direct {p0}, Lcom/loc/bz;->v()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/loc/bz;)V
    .locals 6

    .prologue
    const-wide/16 v2, 0x7d0

    .line 0
    .line 42000
    invoke-virtual {p0}, Lcom/loc/bz;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43000
    invoke-static {}, Lcom/loc/de;->u()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/loc/bz;->u()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/bz;->M:Ljava/util/TimerTask;

    if-nez v0, :cond_2

    new-instance v0, Lcom/loc/ca;

    invoke-direct {v0, p0}, Lcom/loc/ca;-><init>(Lcom/loc/bz;)V

    iput-object v0, p0, Lcom/loc/bz;->M:Ljava/util/TimerTask;

    :cond_2
    iget-object v0, p0, Lcom/loc/bz;->L:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    const-string v1, "T-U"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/loc/bz;->L:Ljava/util/Timer;

    iget-object v0, p0, Lcom/loc/bz;->L:Ljava/util/Timer;

    iget-object v1, p0, Lcom/loc/bz;->M:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/loc/bz;)J
    .locals 2

    iget-wide v0, p0, Lcom/loc/bz;->C:J

    return-wide v0
.end method

.method private i()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/loc/bz;->b:Lorg/json/JSONObject;

    const-string v1, "reversegeo"

    invoke-static {v0, v1}, Lcom/loc/dn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/bz;->b:Lorg/json/JSONObject;

    const-string v1, "reversegeo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/bz;->b:Lorg/json/JSONObject;

    const-string v2, "isOffset"

    invoke-static {v0, v2}, Lcom/loc/dn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/bz;->b:Lorg/json/JSONObject;

    const-string v2, "isOffset"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-result v2

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/loc/bz;->b:Lorg/json/JSONObject;

    const-string v3, "isLocationCacheEnable"

    invoke-static {v0, v3}, Lcom/loc/dn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/bz;->b:Lorg/json/JSONObject;

    const-string v3, "isLocationCacheEnable"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    move-result v0

    :goto_2
    :try_start_3
    iget-boolean v3, p0, Lcom/loc/bz;->Z:Z

    if-ne v2, v3, :cond_0

    iget-boolean v3, p0, Lcom/loc/bz;->Y:Z

    if-ne v1, v3, :cond_0

    iget-boolean v3, p0, Lcom/loc/bz;->g:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    if-eq v0, v3, :cond_1

    .line 6000
    :cond_0
    const/4 v3, 0x0

    :try_start_4
    iput-object v3, p0, Lcom/loc/bz;->U:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/loc/bz;->b(Lorg/json/JSONObject;)V

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/loc/bz;->T:J

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/loc/bz;->A:J

    invoke-static {}, Lcom/loc/cj;->a()Lcom/loc/cj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/loc/cj;->b()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 0
    :cond_1
    :goto_3
    iput-boolean v2, p0, Lcom/loc/bz;->Z:Z

    iput-boolean v1, p0, Lcom/loc/bz;->Y:Z

    iput-boolean v0, p0, Lcom/loc/bz;->g:Z

    iget-object v0, p0, Lcom/loc/bz;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/dn;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/loc/bz;->D:Z

    iput-boolean v4, p0, Lcom/loc/bz;->ac:Z

    return-void

    .line 6000
    :catch_0
    move-exception v3

    :try_start_5
    const-string v5, "APS"

    const-string v6, "cleanCache"

    invoke-static {v3, v5, v6}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_3

    :catch_2
    move-exception v0

    move v0, v4

    move v1, v4

    move v2, v4

    goto :goto_3

    :catch_3
    move-exception v0

    move v0, v4

    move v2, v4

    goto :goto_3

    :catch_4
    move-exception v0

    move v0, v4

    goto :goto_3

    :cond_2
    move v0, v4

    goto :goto_2

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    move v1, v4

    goto :goto_0
.end method

.method static synthetic i(Lcom/loc/bz;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/loc/bz;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/loc/bz;)I
    .locals 1

    invoke-direct {p0}, Lcom/loc/bz;->t()I

    move-result v0

    return v0
.end method

.method private j()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/loc/bz;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bz;->O:Ljava/lang/Object;

    const-string v1, "resetPureOfflineCache"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/loc/dh;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private k()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/bz;->x:Lcom/loc/cc;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/cc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/loc/cc;-><init>(Lcom/loc/bz;B)V

    iput-object v0, p0, Lcom/loc/bz;->x:Lcom/loc/cc;

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/bz;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/bz;->x:Lcom/loc/cc;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/loc/bz;->q()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "initBroadcastListener"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic k(Lcom/loc/bz;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/bz;->u()V

    return-void
.end method

.method private declared-synchronized l()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/bz;->D:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/loc/bz;->t:Lcom/loc/cm;

    .line 20000
    invoke-virtual {v0}, Lcom/loc/cm;->d()V

    .line 0
    :cond_0
    :goto_0
    const-string v0, ""

    const-string v4, "network"

    invoke-direct {p0}, Lcom/loc/bz;->r()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/loc/bz;->s:Lcom/loc/cp;

    .line 22000
    iget-object v5, v2, Lcom/loc/cp;->a:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_6

    iget-object v2, v2, Lcom/loc/cp;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 0
    :goto_1
    iput-object v2, p0, Lcom/loc/bz;->y:Landroid/net/wifi/WifiInfo;

    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/loc/bz;->t:Lcom/loc/cm;

    .line 23000
    iget v2, v2, Lcom/loc/cm;->b:I

    .line 0
    iget-object v5, p0, Lcom/loc/bz;->t:Lcom/loc/cm;

    .line 24000
    iget-object v5, v5, Lcom/loc/cm;->c:Ljava/util/ArrayList;

    .line 0
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_2
    iget-object v6, p0, Lcom/loc/bz;->u:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/loc/bz;->u:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_3
    iget-object v1, p0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    const-string v2, "\u2297 lstCgi & \u2297 wifis"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xc

    iput v1, p0, Lcom/loc/bz;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_3
    monitor-exit p0

    return-object v0

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/loc/bz;->t:Lcom/loc/cm;

    .line 21000
    iget v2, v0, Lcom/loc/cm;->b:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, v0, Lcom/loc/cm;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    iput v2, v0, Lcom/loc/cm;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 21000
    :pswitch_1
    :try_start_2
    iget-object v2, v0, Lcom/loc/cm;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    iput v2, v0, Lcom/loc/cm;->b:I

    goto :goto_0

    .line 22000
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 0
    :cond_7
    invoke-direct {p0}, Lcom/loc/bz;->p()V

    iget-object v2, p0, Lcom/loc/bz;->u:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/loc/bz;->u:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    :cond_8
    sparse-switch v2, :sswitch_data_0

    const/16 v1, 0xb

    iput v1, p0, Lcom/loc/bz;->m:I

    iget-object v1, p0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    const-string v2, "get cgi failure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/loc/dn;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :sswitch_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/cl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/loc/cl;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/loc/cl;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/loc/cl;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/loc/cl;->d:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/bz;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/loc/bz;->y:Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Lcom/loc/bz;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    const-string v0, "cgiwifi"

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_c
    const-string v0, "cgi"

    goto :goto_5

    :sswitch_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/cl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/loc/cl;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/loc/cl;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/loc/cl;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/loc/cl;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/loc/cl;->i:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/bz;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/loc/bz;->y:Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Lcom/loc/bz;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    const-string v0, "cgiwifi"

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_e
    const-string v0, "cgi"

    goto :goto_6

    :sswitch_2
    iget-object v0, p0, Lcom/loc/bz;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/loc/bz;->y:Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Lcom/loc/bz;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_f
    move v2, v3

    :goto_7
    iget-object v0, p0, Lcom/loc/bz;->y:Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Lcom/loc/bz;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/loc/bz;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x2

    iput v0, p0, Lcom/loc/bz;->m:I

    iget-object v0, p0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    const-string v2, "\u2297 around wifi(s) & has access wifi"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "#%s#"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_10
    iget-object v0, p0, Lcom/loc/bz;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_13

    const/4 v0, 0x2

    iput v0, p0, Lcom/loc/bz;->m:I

    iget-object v0, p0, Lcom/loc/bz;->y:Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Lcom/loc/bz;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    const-string v2, "\u2297 access wifi & around wifi 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_11
    iget-object v0, p0, Lcom/loc/bz;->u:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/bz;->y:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    const-string v2, "same access wifi & around wifi 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_12
    const-string v1, "network"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, ""

    const/4 v1, 0x2

    iput v1, p0, Lcom/loc/bz;->m:I

    iget-object v1, p0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    const-string v2, "is network & no wifi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4

    :cond_13
    move v1, v2

    goto :goto_8

    :cond_14
    move v2, v1

    goto/16 :goto_7

    .line 21000
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 0
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method private m()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x2710

    const-wide/16 v8, 0xbb8

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 0
    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v2

    .line 29000
    iget-object v4, p0, Lcom/loc/bz;->J:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 0
    :goto_0
    if-nez v1, :cond_0

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/loc/bz;->G:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v8

    if-lez v0, :cond_7

    :cond_0
    const/16 v0, 0x14

    iget-wide v4, p0, Lcom/loc/bz;->B:J

    sub-long v4, v2, v4

    cmp-long v1, v4, v10

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/loc/bz;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v4, p0, Lcom/loc/bz;->v:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-direct {p0}, Lcom/loc/bz;->q()V

    iget-wide v4, p0, Lcom/loc/bz;->B:J

    sub-long/2addr v2, v4

    cmp-long v1, v2, v10

    if-ltz v1, :cond_6

    :goto_1
    if-lez v0, :cond_6

    iget-object v1, p0, Lcom/loc/bz;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    const-wide/16 v2, 0x96

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 29000
    :cond_2
    invoke-direct {p0}, Lcom/loc/bz;->r()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    :goto_3
    move v1, v0

    goto :goto_0

    :cond_4
    iget-wide v4, p0, Lcom/loc/bz;->F:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    move v0, v1

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/loc/bz;->F:J

    sub-long/2addr v4, v6

    cmp-long v4, v4, v8

    if-ltz v4, :cond_3

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/loc/bz;->G:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x5dc

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3

    move v0, v1

    goto :goto_3

    .line 0
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_6
    iget-object v1, p0, Lcom/loc/bz;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_7
    iget-object v0, p0, Lcom/loc/bz;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/loc/bz;->s:Lcom/loc/cp;

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/bz;->G:J

    iget-object v0, p0, Lcom/loc/bz;->s:Lcom/loc/cp;

    invoke-virtual {v0}, Lcom/loc/cp;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/loc/bz;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lcom/loc/bz;->v:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_8
    return-void

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method private declared-synchronized n()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/bz;->u:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/loc/bz;->v:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/loc/bz;->h:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized o()V
    .locals 8

    const/16 v3, 0x20

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/bz;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bz;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/loc/bz;->G:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x36ee80

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/loc/bz;->p()V

    iget-object v0, p0, Lcom/loc/bz;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    invoke-static {}, Lcom/loc/dn;->f()Z

    move-result v0

    iget-object v2, p0, Lcom/loc/bz;->b:Lorg/json/JSONObject;

    const-string v4, "nbssid"

    invoke-static {v2, v4}, Lcom/loc/dn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_9

    :try_start_2
    iget-object v2, p0, Lcom/loc/bz;->b:Lorg/json/JSONObject;

    const-string v4, "nbssid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_7

    const/4 v0, 0x1

    move v4, v0

    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/loc/bz;->n:Ljava/util/TreeMap;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/loc/bz;->n:Ljava/util/TreeMap;

    :cond_3
    iget-object v0, p0, Lcom/loc/bz;->n:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    iget-object v0, p0, Lcom/loc/bz;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v1

    :goto_2
    if-ge v2, v5, :cond_c

    iget-object v0, p0, Lcom/loc/bz;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    invoke-static {v0}, Lcom/loc/dn;->a(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x14

    if-le v5, v1, :cond_4

    iget v1, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v1}, Lcom/loc/bz;->a(I)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    if-eqz v4, :cond_a

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v6, "*"

    const-string v7, "."

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    if-lt v1, v3, :cond_5

    :try_start_5
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/loc/bz;->n:Ljava/util/TreeMap;

    iget v6, v0, Landroid/net/wifi/ScanResult;->level:I

    mul-int/lit8 v6, v6, 0x1e

    add-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_7
    :try_start_6
    iget-object v2, p0, Lcom/loc/bz;->b:Lorg/json/JSONObject;

    const-string v4, "nbssid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v2

    if-eqz v2, :cond_8

    move v0, v1

    :cond_8
    move v4, v0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    :try_start_7
    const-string v4, "APS"

    const-string v5, "setWifiOrder part"

    invoke-static {v2, v4, v5}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    move v4, v0

    goto/16 :goto_1

    :catch_1
    move-exception v1

    const-string v6, "APS"

    const-string v7, "setWifiOrder"

    invoke-static {v1, v6, v7}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    goto :goto_3

    :cond_a
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_b
    :try_start_8
    const-string v1, "unkwn"

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lcom/loc/bz;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/loc/bz;->n:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v2, p0, Lcom/loc/bz;->u:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    iget-object v0, p0, Lcom/loc/bz;->n:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0
.end method

.method private p()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/bz;->G:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bz;->y:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/loc/bz;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/loc/bz;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/loc/bz;->w:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private q()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 0
    invoke-direct {p0}, Lcom/loc/bz;->r()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/loc/dn;->c()I

    move-result v0

    const/16 v1, 0x12

    if-ge v0, v1, :cond_4

    invoke-static {}, Lcom/loc/dn;->c()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lcom/loc/bz;->b:Lorg/json/JSONObject;

    const-string v1, "wifiactivescan"

    invoke-static {v0, v1}, Lcom/loc/dn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    const-string v0, "1"

    iget-object v1, p0, Lcom/loc/bz;->b:Lorg/json/JSONObject;

    const-string v3, "wifiactivescan"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_1
    if-eqz v0, :cond_5

    :try_start_1
    iget-object v0, p0, Lcom/loc/bz;->s:Lcom/loc/cp;

    invoke-virtual {v0}, Lcom/loc/cp;->b()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    if-eqz v1, :cond_2

    :try_start_2
    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/loc/bz;->F:J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_2
    if-nez v1, :cond_0

    :try_start_3
    iget-object v0, p0, Lcom/loc/bz;->s:Lcom/loc/cp;

    .line 38000
    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/loc/cp;->d:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xbb8

    cmp-long v1, v4, v6

    if-ltz v1, :cond_3

    iget-object v1, v0, Lcom/loc/cp;->a:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/loc/cp;->d:J

    iget-object v0, v0, Lcom/loc/cp;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v2

    .line 0
    :cond_3
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/bz;->F:J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "updateWifi"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "APS"

    const-string v3, "updateWifi part1"

    invoke-static {v0, v1, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v0, v2

    goto :goto_1

    :catch_2
    move-exception v0

    move v1, v2

    :goto_3
    const-string v3, "APS"

    const-string v4, "updateWifi part"

    invoke-static {v0, v3, v4}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method private r()Z
    .locals 1

    iget-object v0, p0, Lcom/loc/bz;->s:Lcom/loc/cp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bz;->s:Lcom/loc/cp;

    invoke-virtual {v0}, Lcom/loc/cp;->c()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private s()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/loc/bz;->c:Ljava/lang/Object;

    const-string v2, "isStarted"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/loc/dh;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private t()I
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/loc/bz;->c:Ljava/lang/Object;

    const-string v2, "getLeftUploadNum"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/loc/dh;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private declared-synchronized u()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/bz;->M:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bz;->M:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bz;->M:Ljava/util/TimerTask;

    :cond_0
    iget-object v0, p0, Lcom/loc/bz;->L:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/bz;->L:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/loc/bz;->L:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bz;->L:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private v()Z
    .locals 2

    iget-object v0, p0, Lcom/loc/bz;->s:Lcom/loc/cp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bz;->r:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bz;->s:Lcom/loc/cp;

    iget-object v1, p0, Lcom/loc/bz;->r:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Lcom/loc/cp;->a(Landroid/net/ConnectivityManager;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private w()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/loc/bz;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bz;->c:Ljava/lang/Object;

    const-string v2, "getInnerString"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "version"

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/loc/dh;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "APS"

    const-string v3, "getCollVer"

    invoke-static {v0, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private declared-synchronized x()V
    .locals 3

    .prologue
    .line 0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/bz;->ag:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bz;->ag:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bz;->ah:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bz;->q:Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/loc/bz;->D:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loc/bz;->t:Lcom/loc/cm;

    iget-boolean v1, p0, Lcom/loc/bz;->D:Z

    .line 41000
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/loc/cm;->a(ZZ)Landroid/telephony/CellLocation;

    .line 0
    :cond_1
    iget-object v0, p0, Lcom/loc/bz;->b:Lorg/json/JSONObject;

    const-string v1, "isOnceLocationLatest"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/loc/bz;->ab:Z

    iget-boolean v0, p0, Lcom/loc/bz;->ab:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/loc/bz;->aa:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/loc/bz;->k()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/bz;->aa:Z

    :cond_2
    invoke-direct {p0}, Lcom/loc/bz;->m()V

    :cond_3
    invoke-direct {p0}, Lcom/loc/bz;->n()V

    iget-object v0, p0, Lcom/loc/bz;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/loc/bz;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/bz;->G:J

    iget-object v0, p0, Lcom/loc/bz;->s:Lcom/loc/cp;

    invoke-virtual {v0}, Lcom/loc/cp;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/loc/bz;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/loc/bz;->h:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Lcom/loc/bz;->v:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/loc/bz;->v:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/loc/bz;->v:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :try_start_3
    invoke-direct {p0}, Lcom/loc/bz;->o()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    :try_start_4
    invoke-direct {p0}, Lcom/loc/bz;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bz;->ag:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/bz;->ag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/loc/bz;->ag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/loc/bz;->Z:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/loc/bz;->Y:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bz;->ah:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/loc/bz;->b(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bz;->q:Ljava/lang/StringBuilder;

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/bz;->ai:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_0
    move-exception v0

    :try_start_7
    const-string v1, "APS"

    const-string v2, "initFirstLocateParam"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private y()Z
    .locals 1

    invoke-static {}, Lcom/loc/de;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bz;->O:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/loc/de;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/loc/bz;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    const-string v1, "context is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setErrorCode(I)V

    iget-object v1, p0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setLocationDetail(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/loc/bz;->i()V

    iget v0, p0, Lcom/loc/bz;->H:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/loc/bz;->H:I

    invoke-virtual {p0}, Lcom/loc/bz;->f()V

    .line 7000
    iget-object v0, p0, Lcom/loc/bz;->s:Lcom/loc/cp;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/bz;->a:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/loc/bz;->P:Z

    if-nez v0, :cond_7

    .line 0
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/loc/bz;->a:Landroid/content/Context;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/loc/bz;->d()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    :try_start_2
    iget-object v0, p0, Lcom/loc/bz;->c:Ljava/lang/Object;

    const-string v4, "getColUpHist"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/loc/dh;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_2
    :try_start_3
    invoke-direct {p0}, Lcom/loc/bz;->y()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/loc/bz;->O:Ljava/lang/Object;

    const-string v4, "getOffDlHist"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/loc/dh;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :goto_3
    :try_start_4
    iget-object v0, p0, Lcom/loc/bz;->a:Landroid/content/Context;

    const-string v4, "pref"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 9000
    iget-object v0, p0, Lcom/loc/bz;->a:Landroid/content/Context;

    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    const-string v5, "smac"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    :try_start_5
    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/String;

    invoke-static {v6}, Lcom/loc/ej;->b(Ljava/lang/String;)[B

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v0, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_4
    :try_start_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "00:00:00:00:00:00"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iput-object v0, p0, Lcom/loc/bz;->I:Ljava/lang/String;

    .line 0
    :cond_5
    iget-wide v4, p0, Lcom/loc/bz;->A:J

    .line 10000
    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-wide/16 v6, 0x320

    cmp-long v0, v4, v6

    if-gez v0, :cond_29

    iget-object v0, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v0}, Lcom/loc/dn;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/loc/dn;->a()J

    move-result-wide v4

    iget-object v0, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    :goto_5
    const-wide/16 v6, 0x2710

    cmp-long v0, v4, v6

    if-gtz v0, :cond_29

    move v0, v1

    .line 0
    :goto_6
    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v0}, Lcom/loc/dn;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/loc/bz;->g:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/loc/de;->c(J)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setLocationType(I)V

    :cond_6
    iget-object v0, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    goto/16 :goto_0

    .line 7000
    :cond_7
    iget-object v0, p0, Lcom/loc/bz;->s:Lcom/loc/cp;

    iget-boolean v4, p0, Lcom/loc/bz;->P:Z

    .line 8000
    iget-object v5, v0, Lcom/loc/cp;->c:Landroid/content/Context;

    iget-object v6, v0, Lcom/loc/cp;->a:Landroid/net/wifi/WifiManager;

    if-eqz v6, :cond_2

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/loc/dn;->c()I

    move-result v4

    const/16 v6, 0x11

    if-le v4, v6, :cond_2

    const-string v4, "autoenablewifialwaysscan"

    iget-object v6, v0, Lcom/loc/cp;->b:Lorg/json/JSONObject;

    invoke-static {v6, v4}, Lcom/loc/dn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v6

    if-eqz v6, :cond_8

    :try_start_7
    const-string v6, "0"

    iget-object v0, v0, Lcom/loc/cp;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :cond_8
    :goto_7
    :try_start_8
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "android.provider.Settings$Global"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v0, v6

    const/4 v6, 0x1

    const-string v7, "wifi_scan_always_enabled"

    aput-object v7, v0, v6

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/ContentResolver;

    aput-object v10, v6, v7

    const/4 v7, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v6, v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    const-string v7, "getInt"

    invoke-static {v5, v7, v0, v6}, Lcom/loc/dh;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v0, v6

    const/4 v4, 0x1

    const-string v6, "wifi_scan_always_enabled"

    aput-object v6, v0, v4

    const/4 v4, 0x2

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v4

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/ContentResolver;

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v4, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v6

    const-string v6, "putInt"

    invoke-static {v5, v6, v0, v4}, Lcom/loc/dh;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :try_start_a
    const-string v4, "WifiManagerWrapper"

    const-string v5, "enableWifiAlwaysScan"

    invoke-static {v0, v4, v5}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 8000
    :catch_1
    move-exception v0

    :try_start_b
    const-string v4, "WifiManagerWrapper"

    const-string v6, "enableWifiAlwaysScan1"

    invoke-static {v0, v4, v6}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_7

    .line 0
    :cond_9
    :try_start_c
    iget-object v0, p0, Lcom/loc/bz;->O:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/bz;->O:Ljava/lang/Object;

    const-string v4, "stopOff"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/loc/dh;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/bz;->l:Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_3

    :catch_2
    move-exception v0

    goto/16 :goto_3

    .line 9000
    :catch_3
    move-exception v0

    :try_start_d
    const-string v6, "APS"

    const-string v7, "getSmac"

    invoke-static {v0, v6, v7}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v0, v3

    goto/16 :goto_4

    .line 0
    :cond_a
    iget-object v0, p0, Lcom/loc/bz;->t:Lcom/loc/cm;

    iget-boolean v4, p0, Lcom/loc/bz;->D:Z

    .line 11000
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/loc/cm;->a(ZZ)Landroid/telephony/CellLocation;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 0
    :try_start_e
    invoke-direct {p0}, Lcom/loc/bz;->m()V

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/loc/bz;->B:J

    invoke-direct {p0}, Lcom/loc/bz;->n()V

    invoke-direct {p0}, Lcom/loc/bz;->o()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :goto_8
    :try_start_f
    invoke-direct {p0}, Lcom/loc/bz;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bz;->ag:Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    invoke-direct {p0}, Lcom/loc/bz;->y()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/loc/bz;->l:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/loc/bz;->O:Ljava/lang/Object;

    const-string v4, "startOff"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/loc/bz;->b:Lorg/json/JSONObject;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/loc/bz;->ag:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v0, v4, v5}, Lcom/loc/dh;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/bz;->l:Z
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_b
    :goto_9
    :try_start_11
    iget-object v0, p0, Lcom/loc/bz;->ag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/loc/bz;->f:Z

    if-nez v0, :cond_c

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/loc/bz;->a:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/loc/bz;->a(ZLandroid/content/Context;)V

    :cond_c
    const/4 v0, 0x4

    :goto_a
    if-lez v0, :cond_d

    iget v1, p0, Lcom/loc/bz;->e:I

    if-eqz v1, :cond_d

    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :catch_4
    move-exception v0

    const-string v4, "APS"

    const-string v5, "getLocation"

    invoke-static {v0, v4, v5}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catch_5
    move-exception v0

    const-string v4, "APS"

    const-string v5, "getLocation:isOffLineLoc"

    invoke-static {v0, v4, v5}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_d
    iget v0, p0, Lcom/loc/bz;->e:I

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/loc/bz;->d:Lcom/loc/cd;

    invoke-virtual {v0}, Lcom/loc/cd;->c()Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    goto/16 :goto_0

    :cond_e
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    iget v1, p0, Lcom/loc/bz;->m:I

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setErrorCode(I)V

    iget-object v1, p0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setLocationDetail(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/loc/bz;->b(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bz;->q:Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/loc/bz;->D:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/loc/bz;->t:Lcom/loc/cm;

    invoke-virtual {v0}, Lcom/loc/cm;->a()Lcom/loc/cl;

    move-result-object v0

    move-object v6, v0

    :goto_b
    if-nez v6, :cond_10

    iget-object v0, p0, Lcom/loc/bz;->V:Lcom/loc/cl;

    if-eqz v0, :cond_17

    :cond_10
    iget-object v0, p0, Lcom/loc/bz;->V:Lcom/loc/cl;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/loc/bz;->V:Lcom/loc/cl;

    .line 12000
    if-eqz v6, :cond_11

    iget v4, v6, Lcom/loc/cl;->k:I

    packed-switch v4, :pswitch_data_0

    :cond_11
    move v0, v2

    .line 0
    :goto_c
    if-nez v0, :cond_17

    :cond_12
    move v5, v1

    .line 13000
    :goto_d
    iget-wide v10, p0, Lcom/loc/bz;->A:J

    cmp-long v0, v10, v8

    if-nez v0, :cond_18

    move v4, v1

    .line 0
    :goto_e
    iget-object v0, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/loc/bz;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v7, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v7}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getAccuracy()F

    move-result v7

    const v10, 0x43958000    # 299.0f

    cmpl-float v7, v7, v10

    if-lez v7, :cond_1a

    const/4 v7, 0x5

    if-le v0, v7, :cond_1a

    move v0, v1

    :goto_f
    move v1, v0

    :goto_10
    iget-object v0, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/loc/bz;->U:Ljava/lang/String;

    if-eqz v0, :cond_1b

    if-nez v1, :cond_1b

    if-nez v5, :cond_1b

    iget-boolean v0, p0, Lcom/loc/bz;->g:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/loc/de;->c(J)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/loc/cs;->a()Lcom/loc/cs;

    iget-object v0, p0, Lcom/loc/bz;->U:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/bz;->q:Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Lcom/loc/cs;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    move-result v2

    if-nez v2, :cond_13

    iget-wide v10, p0, Lcom/loc/bz;->T:J

    cmp-long v0, v10, v8

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/loc/bz;->T:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0xbb8

    cmp-long v0, v8, v10

    if-gez v0, :cond_1b

    :cond_13
    iget-object v0, p0, Lcom/loc/bz;->t:Lcom/loc/cm;

    iget-boolean v5, p0, Lcom/loc/bz;->D:Z

    invoke-virtual {v0, v5}, Lcom/loc/cm;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/loc/bz;->t:Lcom/loc/cm;

    .line 14000
    invoke-virtual {v0}, Lcom/loc/cm;->c()V

    .line 0
    :cond_14
    iget-object v0, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v0}, Lcom/loc/dn;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const-string v1, "mem"

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setLocationType(I)V

    iget-object v0, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    goto/16 :goto_0

    .line 12000
    :pswitch_0
    iget v4, v0, Lcom/loc/cl;->k:I

    if-ne v4, v11, :cond_11

    iget v4, v6, Lcom/loc/cl;->i:I

    iget v5, v0, Lcom/loc/cl;->i:I

    if-ne v4, v5, :cond_15

    iget v4, v6, Lcom/loc/cl;->h:I

    iget v5, v0, Lcom/loc/cl;->h:I

    if-ne v4, v5, :cond_15

    iget v4, v6, Lcom/loc/cl;->g:I

    iget v0, v0, Lcom/loc/cl;->g:I

    if-ne v4, v0, :cond_15

    move v0, v1

    goto/16 :goto_c

    :cond_15
    move v0, v2

    goto/16 :goto_c

    :pswitch_1
    iget v4, v0, Lcom/loc/cl;->k:I

    if-ne v4, v1, :cond_11

    iget v4, v6, Lcom/loc/cl;->c:I

    iget v5, v0, Lcom/loc/cl;->c:I

    if-ne v4, v5, :cond_16

    iget v4, v6, Lcom/loc/cl;->d:I

    iget v5, v0, Lcom/loc/cl;->d:I

    if-ne v4, v5, :cond_16

    iget-object v4, v6, Lcom/loc/cl;->b:Ljava/lang/String;

    if-eqz v4, :cond_16

    iget-object v4, v6, Lcom/loc/cl;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/loc/cl;->b:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v1

    goto/16 :goto_c

    :cond_16
    move v0, v2

    goto/16 :goto_c

    :cond_17
    move v5, v2

    .line 0
    goto/16 :goto_d

    .line 13000
    :cond_18
    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/loc/bz;->A:J

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x4e20

    cmp-long v0, v10, v12

    if-lez v0, :cond_19

    move v4, v1

    goto/16 :goto_e

    :cond_19
    move v4, v2

    goto/16 :goto_e

    :cond_1a
    move v0, v2

    .line 0
    goto/16 :goto_f

    :cond_1b
    if-nez v2, :cond_20

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/loc/bz;->T:J

    :goto_11
    iget-object v0, p0, Lcom/loc/bz;->R:Ljava/lang/String;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/loc/bz;->ag:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/bz;->R:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {}, Lcom/loc/dn;->a()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/loc/bz;->S:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0xbb8

    cmp-long v0, v8, v10

    if-gez v0, :cond_21

    iget-object v0, p0, Lcom/loc/bz;->R:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/bz;->ag:Ljava/lang/String;

    :goto_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/loc/bz;->ag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/loc/bz;->Z:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/loc/bz;->Y:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bz;->ah:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/loc/bz;->g:Z

    if-eqz v0, :cond_26

    if-nez v1, :cond_26

    if-nez v4, :cond_26

    invoke-static {}, Lcom/loc/cs;->a()Lcom/loc/cs;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/bz;->ah:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/bz;->q:Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/loc/bz;->g:Z

    invoke-virtual {v0, v2, v3, v5}, Lcom/loc/cs;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    :goto_13
    if-nez v4, :cond_1c

    invoke-static {v0}, Lcom/loc/dn;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_1c
    if-eqz v1, :cond_24

    :cond_1d
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/loc/bz;->a(ZZ)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v0}, Lcom/loc/dn;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const-string v1, "new"

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/bz;->q:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bz;->U:Ljava/lang/String;

    iput-object v6, p0, Lcom/loc/bz;->V:Lcom/loc/cl;

    invoke-direct {p0}, Lcom/loc/bz;->j()V

    :cond_1e
    :goto_14
    invoke-static {}, Lcom/loc/cs;->a()Lcom/loc/cs;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bz;->ah:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/bz;->q:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v4, p0, Lcom/loc/bz;->a:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/loc/cs;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/autonavi/aps/amapapi/model/AmapLoc;Landroid/content/Context;Z)V

    invoke-static {}, Lcom/loc/cw;->a()Lcom/loc/cw;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bz;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/bz;->ag:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0, v1, v2, v3}, Lcom/loc/cw;->a(Landroid/content/Context;Ljava/lang/String;Lcom/autonavi/aps/amapapi/model/AmapLoc;)V

    iget-object v0, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v0}, Lcom/loc/dn;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/loc/bz;->ag:Ljava/lang/String;

    iget-object v1, p0, Lcom/loc/bz;->q:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/bz;->b:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/loc/bz;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/loc/bz;->l()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/loc/bz;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/dn;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/loc/bz;->q:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/bz;->U:Ljava/lang/String;

    iget-object v1, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iput-object v0, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setLocationType(I)V

    iget-object v0, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u79bb\u7ebf\u5b9a\u4f4d\uff0c\u5728\u7ebf\u5b9a\u4f4d\u5931\u8d25\u539f\u56e0:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getErrorInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setLocationDetail(Ljava/lang/String;)V

    :cond_1f
    iget-object v0, p0, Lcom/loc/bz;->q:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/loc/bz;->q:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bz;->q:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    goto/16 :goto_0

    :cond_20
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/loc/bz;->T:J

    goto/16 :goto_11

    :cond_21
    invoke-static {}, Lcom/loc/dn;->a()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/loc/bz;->S:J

    iget-object v0, p0, Lcom/loc/bz;->ag:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/bz;->R:Ljava/lang/String;

    goto/16 :goto_12

    :cond_22
    iget-object v0, p0, Lcom/loc/bz;->R:Ljava/lang/String;

    if-nez v0, :cond_23

    invoke-static {}, Lcom/loc/dn;->a()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/loc/bz;->S:J

    iget-object v0, p0, Lcom/loc/bz;->ag:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/bz;->R:Ljava/lang/String;

    goto/16 :goto_12

    :cond_23
    invoke-static {}, Lcom/loc/dn;->a()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/loc/bz;->S:J

    goto/16 :goto_12

    :cond_24
    if-eqz v4, :cond_25

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/loc/bz;->a(ZZ)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v0}, Lcom/loc/dn;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/loc/bz;->q:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bz;->U:Ljava/lang/String;

    iput-object v6, p0, Lcom/loc/bz;->V:Lcom/loc/cl;

    invoke-direct {p0}, Lcom/loc/bz;->j()V

    goto/16 :goto_14

    :cond_25
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/loc/bz;->T:J

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setLocationType(I)V

    iput-object v0, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->toJson(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loc/bz;->b(Lorg/json/JSONObject;)V

    invoke-direct {p0}, Lcom/loc/bz;->j()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_14

    :catch_6
    move-exception v0

    goto/16 :goto_2

    :cond_26
    move-object v0, v3

    goto/16 :goto_13

    :cond_27
    move v1, v2

    goto/16 :goto_10

    :cond_28
    move-object v6, v3

    goto/16 :goto_b

    :cond_29
    move v0, v2

    goto/16 :goto_6

    :cond_2a
    move-wide v4, v8

    goto/16 :goto_5

    :cond_2b
    move-object v0, v3

    goto/16 :goto_4

    .line 12000
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized a(Z)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v0, p0, Lcom/loc/bz;->ac:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/loc/bz;->i()V

    :cond_1
    iget-boolean v0, p0, Lcom/loc/bz;->ai:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/loc/bz;->x()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iget-boolean v1, p0, Lcom/loc/bz;->D:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/loc/bz;->t:Lcom/loc/cm;

    invoke-virtual {v1}, Lcom/loc/cm;->a()Lcom/loc/cl;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :cond_3
    move-object v1, v0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/loc/bz;->ag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    iget v1, p0, Lcom/loc/bz;->m:I

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setErrorCode(I)V

    iget-object v1, p0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setLocationDetail(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :goto_1
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "APS"

    const-string v3, "doFirstNetLocate"

    invoke-static {v1, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/loc/bz;->a(ZZ)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/dn;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "new"

    invoke-virtual {v0, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setType(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/loc/bz;->q:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/loc/bz;->U:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bz;->V:Lcom/loc/cl;

    iput-object v0, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->toJson(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/loc/bz;->b(Lorg/json/JSONObject;)V

    invoke-direct {p0}, Lcom/loc/bz;->j()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    :try_start_4
    iget-object v1, p0, Lcom/loc/bz;->q:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/bz;->a:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/loc/bz;->e(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/loc/bz;->ag:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/bz;->b:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/loc/bz;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/loc/bz;->l()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v1, v3, v4}, Lcom/loc/bz;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/dn;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/loc/bz;->q:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/loc/bz;->U:Ljava/lang/String;

    const-string v2, "file"

    invoke-virtual {v1, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setType(Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setLocationType(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u79bb\u7ebf\u5b9a\u4f4d\u7ed3\u679c\uff0c\u5728\u7ebf\u5b9a\u4f4d\u5931\u8d25\u539f\u56e0:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getErrorInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setLocationDetail(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->toJson(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loc/bz;->b(Lorg/json/JSONObject;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v1

    goto/16 :goto_1
.end method

.method public final declared-synchronized a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/loc/dn;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/loc/cs;->a()Lcom/loc/cs;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bz;->ah:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/bz;->q:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/loc/bz;->a:Landroid/content/Context;

    const/4 v5, 0x1

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/loc/cs;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/autonavi/aps/amapapi/model/AmapLoc;Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 0
    iput-object p1, p0, Lcom/loc/bz;->b:Lorg/json/JSONObject;

    const-string v0, "collwifiscan"

    invoke-static {p1, v0}, Lcom/loc/dn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "collwifiscan"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0x14

    sput v0, Lcom/loc/cr;->h:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/loc/bz;->t:Lcom/loc/cm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/bz;->t:Lcom/loc/cm;

    .line 4000
    iput-object p1, v0, Lcom/loc/cm;->g:Lorg/json/JSONObject;

    .line 0
    :cond_1
    iget-object v0, p0, Lcom/loc/bz;->s:Lcom/loc/cp;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/bz;->s:Lcom/loc/cp;

    .line 5000
    iput-object p1, v0, Lcom/loc/cp;->b:Lorg/json/JSONObject;

    .line 0
    :cond_2
    return-void

    :cond_3
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/loc/cr;->h:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "setExtra"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final declared-synchronized a(ZLandroid/content/Context;)V
    .locals 3

    .prologue
    .line 0
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/loc/bz;->H:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/loc/bz;->f:Z

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_6

    iget-boolean v0, p0, Lcom/loc/bz;->f:Z

    if-nez v0, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/loc/bz;->d:Lcom/loc/cd;

    if-nez v0, :cond_4

    new-instance v0, Lcom/loc/cd;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/loc/cd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loc/bz;->d:Lcom/loc/cd;

    iget-object v0, p0, Lcom/loc/bz;->d:Lcom/loc/cd;

    iget-object v1, p0, Lcom/loc/bz;->p:Lcom/loc/cb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39000
    :try_start_1
    iput-object v1, v0, Lcom/loc/cd;->j:Lcom/loc/ch;

    iget-object v2, v0, Lcom/loc/cd;->d:Landroid/content/ServiceConnection;

    if-nez v2, :cond_2

    new-instance v2, Lcom/loc/ce;

    invoke-direct {v2, v0, v1}, Lcom/loc/ce;-><init>(Lcom/loc/cd;Lcom/loc/ch;)V

    iput-object v2, v0, Lcom/loc/cd;->d:Landroid/content/ServiceConnection;

    :cond_2
    iget-object v1, v0, Lcom/loc/cd;->e:Landroid/content/ServiceConnection;

    if-nez v1, :cond_3

    new-instance v1, Lcom/loc/cf;

    invoke-direct {v1, v0}, Lcom/loc/cf;-><init>(Lcom/loc/cd;)V

    iput-object v1, v0, Lcom/loc/cd;->e:Landroid/content/ServiceConnection;

    :cond_3
    iget-object v1, v0, Lcom/loc/cd;->f:Landroid/content/ServiceConnection;

    if-nez v1, :cond_4

    new-instance v1, Lcom/loc/cg;

    invoke-direct {v1, v0}, Lcom/loc/cg;-><init>(Lcom/loc/cd;)V

    iput-object v1, v0, Lcom/loc/cd;->f:Landroid/content/ServiceConnection;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 0
    :cond_4
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/loc/bz;->d:Lcom/loc/cd;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/loc/bz;->d:Lcom/loc/cd;

    invoke-virtual {v0}, Lcom/loc/cd;->b()V

    :cond_5
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/bz;->f:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    :goto_2
    monitor-exit p0

    return-void

    .line 39000
    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "ConnectionServiceManager"

    const-string v2, "init"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7
    :try_start_4
    iget-object v0, p0, Lcom/loc/bz;->d:Lcom/loc/cd;

    invoke-virtual {v0}, Lcom/loc/cd;->a()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_5
    const-string v1, "APS"

    const-string v2, "bindService"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/bz;->f:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public final declared-synchronized a(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/bz;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bz;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/loc/bz;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/de;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/bz;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/dn;->b(Landroid/content/Context;)Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/bz;->s:Lcom/loc/cp;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/loc/bz;->a:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-static {v0, v2}, Lcom/loc/dn;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    new-instance v2, Lcom/loc/cp;

    iget-object v3, p0, Lcom/loc/bz;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/loc/bz;->b:Lorg/json/JSONObject;

    invoke-direct {v2, v3, v0, v4}, Lcom/loc/cp;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/loc/bz;->s:Lcom/loc/cp;

    :cond_2
    iget-object v0, p0, Lcom/loc/bz;->t:Lcom/loc/cm;

    if-nez v0, :cond_3

    new-instance v0, Lcom/loc/cm;

    iget-object v2, p0, Lcom/loc/bz;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/bz;->b:Lorg/json/JSONObject;

    invoke-direct {v0, v2, v3}, Lcom/loc/cm;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/loc/bz;->t:Lcom/loc/cm;

    :cond_3
    invoke-static {}, Lcom/loc/cs;->a()Lcom/loc/cs;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/bz;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/loc/cs;->a(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/loc/bz;->i()V

    invoke-direct {p0}, Lcom/loc/bz;->x()V

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/loc/bz;->a(ZZ)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loc/bz;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "doFusionLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final declared-synchronized b(Landroid/content/Context;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/loc/bz;->a(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/bz;->a:Landroid/content/Context;

    invoke-static {}, Lcom/loc/da;->a()Lcom/loc/da;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bz;->W:Lcom/loc/da;

    iget-object v0, p0, Lcom/loc/bz;->r:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loc/bz;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-static {v0, v1}, Lcom/loc/dn;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/loc/bz;->r:Landroid/net/ConnectivityManager;

    :cond_1
    new-instance v0, Lcom/loc/dd;

    invoke-direct {v0}, Lcom/loc/dd;-><init>()V

    iput-object v0, p0, Lcom/loc/bz;->K:Lcom/loc/dd;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 4

    .prologue
    .line 0
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/loc/bz;->ac:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/bz;->ai:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/bz;->i:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/cr;->i:Z

    invoke-virtual {p0}, Lcom/loc/bz;->g()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bz;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bz;->U:Ljava/lang/String;

    invoke-direct {p0}, Lcom/loc/bz;->j()V

    iget-object v0, p0, Lcom/loc/bz;->d:Lcom/loc/cd;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/loc/bz;->d:Lcom/loc/cd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16000
    :try_start_1
    iget-boolean v0, v1, Lcom/loc/cd;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/loc/cd;->a:Landroid/content/Context;

    iget-object v2, v1, Lcom/loc/cd;->d:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    iget-boolean v0, v1, Lcom/loc/cd;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/loc/cd;->a:Landroid/content/Context;

    iget-object v2, v1, Lcom/loc/cd;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    iget-boolean v0, v1, Lcom/loc/cd;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/loc/cd;->a:Landroid/content/Context;

    iget-object v2, v1, Lcom/loc/cd;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, v1, Lcom/loc/cd;->c:Lcom/loc/du;

    .line 15000
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/loc/cd;->a:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/loc/cd;->c:Lcom/loc/du;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/loc/cd;->d:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/loc/cd;->e:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/loc/cd;->f:Landroid/content/ServiceConnection;

    iget-object v0, v1, Lcom/loc/cd;->j:Lcom/loc/ch;

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/loc/cd;->j:Lcom/loc/ch;

    const/4 v2, -0x1

    invoke-interface {v0, v2}, Lcom/loc/ch;->a(I)V

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/loc/cd;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/loc/cd;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/loc/cd;->h:Z

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/loc/cd;->i:Z

    .line 0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bz;->d:Lcom/loc/cd;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/bz;->f:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/loc/bz;->e:I

    :cond_4
    invoke-direct {p0}, Lcom/loc/bz;->u()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/loc/cv;->a()Lcom/loc/cv;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bz;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loc/cv;->b(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    invoke-static {}, Lcom/loc/cj;->a()Lcom/loc/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/cj;->b()V

    invoke-static {}, Lcom/loc/dn;->g()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, p0, Lcom/loc/bz;->a:Landroid/content/Context;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/loc/bz;->x:Lcom/loc/cc;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/loc/bz;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/bz;->x:Lcom/loc/cc;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_5
    const/4 v0, 0x0

    :try_start_6
    iput-object v0, p0, Lcom/loc/bz;->x:Lcom/loc/cc;

    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/bz;->aa:Z

    iget-object v0, p0, Lcom/loc/bz;->t:Lcom/loc/cm;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/loc/bz;->t:Lcom/loc/cm;

    .line 17000
    iget-object v0, v1, Lcom/loc/cm;->e:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/loc/cm;->h:Landroid/telephony/PhoneStateListener;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_6

    :try_start_7
    iget-object v0, v1, Lcom/loc/cm;->e:Landroid/telephony/TelephonyManager;

    iget-object v2, v1, Lcom/loc/cm;->h:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_6
    :goto_3
    const/4 v0, 0x0

    :try_start_8
    iput-object v0, v1, Lcom/loc/cm;->h:Landroid/telephony/PhoneStateListener;

    iget-object v2, v1, Lcom/loc/cm;->l:Ljava/lang/Object;

    monitor-enter v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v0, 0x1

    :try_start_9
    iput-boolean v0, v1, Lcom/loc/cm;->k:Z

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    iget-object v0, v1, Lcom/loc/cm;->j:Landroid/os/HandlerThread;

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/loc/cm;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/loc/cm;->j:Landroid/os/HandlerThread;

    :cond_7
    iget-object v0, v1, Lcom/loc/cm;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/16 v0, -0x71

    iput v0, v1, Lcom/loc/cm;->d:I

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/loc/cm;->e:Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/loc/cm;->f:Ljava/lang/Object;

    .line 0
    :cond_8
    invoke-static {}, Lcom/loc/cw;->a()Lcom/loc/cw;

    move-result-object v0

    .line 18000
    invoke-static {}, Lcom/loc/cw;->a()Lcom/loc/cw;

    move-result-object v1

    .line 19000
    iget-object v2, v1, Lcom/loc/cw;->a:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v1, v1, Lcom/loc/cw;->a:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 18000
    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/loc/cw;->b:Z

    .line 0
    const-string v0, "stopOff"

    invoke-direct {p0, v0}, Lcom/loc/bz;->a(Ljava/lang/String;)V

    const-string v0, "destroy"

    invoke-direct {p0, v0}, Lcom/loc/bz;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/bz;->l:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/bz;->S:J

    invoke-direct {p0}, Lcom/loc/bz;->p()V

    iget-object v0, p0, Lcom/loc/bz;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/loc/bz;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bz;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/loc/bz;->n:Ljava/util/TreeMap;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/loc/bz;->n:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bz;->n:Ljava/util/TreeMap;

    :cond_b
    const/4 v0, -0x1

    sput v0, Lcom/loc/bz;->ad:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bz;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bz;->O:Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-void

    .line 16000
    :catch_0
    move-exception v0

    :try_start_b
    const-string v2, "ConnectionServiceManager"

    const-string v3, "unbindService"

    invoke-static {v0, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    :try_start_c
    const-string v1, "APS"

    const-string v2, "destroy part"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    :try_start_d
    const-string v1, "APS"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    const/4 v0, 0x0

    :try_start_e
    iput-object v0, p0, Lcom/loc/bz;->x:Lcom/loc/cc;

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/loc/bz;->x:Lcom/loc/cc;

    throw v0

    .line 17000
    :catch_3
    move-exception v0

    const-string v2, "CgiManager"

    const-string v3, "destroy"

    invoke-static {v0, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
.end method

.method public final declared-synchronized c(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/loc/bz;->b(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/loc/cr;->i:Z

    iget-object v0, p0, Lcom/loc/bz;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/loc/bz;->e(Landroid/content/Context;)V

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/bz;->C:J

    iget-boolean v0, p0, Lcom/loc/bz;->aa:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/loc/bz;->k()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/bz;->aa:Z

    .line 1000
    :cond_1
    iget-object v1, p0, Lcom/loc/bz;->t:Lcom/loc/cm;

    .line 2000
    invoke-virtual {v1}, Lcom/loc/cm;->c()V

    iget-boolean v0, v1, Lcom/loc/cm;->k:Z

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/loc/cm;->e:Landroid/telephony/TelephonyManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    :try_start_2
    iget-boolean v0, v1, Lcom/loc/cm;->m:Z

    iget-object v2, v1, Lcom/loc/cm;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/loc/dn;->a(ZLandroid/telephony/CellLocation;)I

    move-result v0

    iput v0, v1, Lcom/loc/cm;->b:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    iget-object v0, v1, Lcom/loc/cm;->j:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/loc/cm;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/loc/cm;->j:Landroid/os/HandlerThread;

    :cond_2
    iget-object v0, v1, Lcom/loc/cm;->j:Landroid/os/HandlerThread;

    if-nez v0, :cond_3

    new-instance v0, Lcom/loc/co;

    const-string v2, "listenerPhoneStateThread"

    invoke-direct {v0, v1, v2}, Lcom/loc/co;-><init>(Lcom/loc/cm;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/loc/cm;->j:Landroid/os/HandlerThread;

    iget-object v0, v1, Lcom/loc/cm;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1000
    :cond_3
    iget-object v0, p0, Lcom/loc/bz;->t:Lcom/loc/cm;

    .line 3000
    invoke-virtual {v0}, Lcom/loc/cm;->c()V

    .line 0
    iget-object v0, p0, Lcom/loc/bz;->t:Lcom/loc/cm;

    invoke-virtual {v0}, Lcom/loc/cm;->b()Landroid/telephony/CellLocation;

    invoke-static {}, Lcom/loc/cw;->a()Lcom/loc/cw;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bz;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loc/cw;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/bz;->i:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2000
    :catch_0
    move-exception v0

    :try_start_4
    const-string v2, "CgiManager"

    const-string v3, "CgiManager"

    invoke-static {v0, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9

    iput v0, v1, Lcom/loc/cm;->b:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized d(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 0
    monitor-enter p0

    :try_start_0
    sget v1, Lcom/loc/bz;->ad:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 40000
    iget-object v1, p0, Lcom/loc/bz;->a:Landroid/content/Context;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/loc/bz;->ae:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1b7740

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/loc/bz;->ae:J

    iget-object v1, p0, Lcom/loc/bz;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/dn;->e(Landroid/content/Context;)I

    move-result v1

    iget v2, p0, Lcom/loc/bz;->af:I

    if-le v1, v2, :cond_2

    .line 0
    :goto_0
    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    sput v0, Lcom/loc/bz;->ad:I

    invoke-static {p1}, Lcom/loc/de;->a(Landroid/content/Context;)Z

    invoke-static {}, Lcom/loc/de;->t()I

    move-result v0

    iput v0, p0, Lcom/loc/bz;->af:I

    iget v0, p0, Lcom/loc/bz;->af:I

    invoke-static {p1, v0}, Lcom/loc/dn;->a(Landroid/content/Context;I)V

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/bz;->ae:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 40000
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 0
    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "APS"

    const-string v2, "initAuth"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final d()Z
    .locals 1

    iget-object v0, p0, Lcom/loc/bz;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final e()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/loc/bz;->d()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/loc/bz;->s()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "APS"

    const-string v3, "collStarted"

    invoke-static {v1, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final f()V
    .locals 1

    invoke-virtual {p0}, Lcom/loc/bz;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/loc/bz;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/loc/bz;->t()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0
.end method

.method final g()V
    .locals 3

    invoke-virtual {p0}, Lcom/loc/bz;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/loc/bz;->e()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x14

    sput v0, Lcom/loc/cr;->h:I

    :try_start_0
    iget-object v0, p0, Lcom/loc/bz;->c:Ljava/lang/Object;

    const-string v1, "destroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/loc/dh;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "stop3rdCM"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final declared-synchronized h()Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v0, p0, Lcom/loc/bz;->ac:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/loc/bz;->i()V

    :cond_1
    invoke-direct {p0}, Lcom/loc/bz;->x()V

    iget-object v0, p0, Lcom/loc/bz;->ag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    iget v1, p0, Lcom/loc/bz;->m:I

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setErrorCode(I)V

    iget-object v1, p0, Lcom/loc/bz;->X:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setLocationDetail(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/loc/cs;->a()Lcom/loc/cs;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bz;->ah:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/bz;->q:Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/loc/bz;->g:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/loc/cs;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/dn;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/loc/bz;->T:J

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setLocationType(I)V

    iput-object v0, p0, Lcom/loc/bz;->z:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->toJson(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/loc/bz;->b(Lorg/json/JSONObject;)V

    invoke-direct {p0}, Lcom/loc/bz;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
