.class public final Lcom/loc/de;
.super Ljava/lang/Object;
.source "AuthUtil.java"


# static fields
.field private static A:Z

.field private static B:I

.field private static C:J

.field private static D:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static E:Ljava/lang/String;

.field private static F:Ljava/lang/String;

.field private static G:Z

.field private static H:Z

.field private static I:I

.field private static J:I

.field private static K:Z

.field private static L:J

.field private static M:I

.field private static N:Z

.field private static O:Z

.field private static P:Z

.field private static Q:Z

.field private static R:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/loc/dg;",
            ">;"
        }
    .end annotation
.end field

.field private static S:Z

.field private static T:J

.field private static U:I

.field private static V:I

.field static a:Z

.field private static b:Landroid/content/Context;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Z

.field private static j:J

.field private static k:J

.field private static l:J

.field private static m:Z

.field private static n:I

.field private static o:Z

.field private static p:I

.field private static q:Z

.field private static r:Z

.field private static s:I

.field private static t:I

.field private static u:I

.field private static v:Z

.field private static w:Z

.field private static x:I

.field private static y:J

.field private static z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0xbb8

    const/4 v6, -0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "\u63d0\u793a\u4fe1\u606f"

    sput-object v0, Lcom/loc/de;->c:Ljava/lang/String;

    const-string v0, "\u786e\u8ba4"

    sput-object v0, Lcom/loc/de;->d:Ljava/lang/String;

    const-string v0, "\u53d6\u6d88"

    sput-object v0, Lcom/loc/de;->e:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/loc/de;->f:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/loc/de;->g:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/loc/de;->h:Ljava/lang/String;

    sput-boolean v2, Lcom/loc/de;->i:Z

    sput-wide v4, Lcom/loc/de;->j:J

    sput-wide v4, Lcom/loc/de;->k:J

    const-wide/16 v0, 0x1388

    sput-wide v0, Lcom/loc/de;->l:J

    sput-boolean v2, Lcom/loc/de;->m:Z

    sput v2, Lcom/loc/de;->n:I

    sput-boolean v2, Lcom/loc/de;->o:Z

    sput v2, Lcom/loc/de;->p:I

    sput-boolean v2, Lcom/loc/de;->q:Z

    sput-boolean v3, Lcom/loc/de;->r:Z

    const v0, 0x36ee80

    sput v0, Lcom/loc/de;->s:I

    sput v2, Lcom/loc/de;->t:I

    sput v2, Lcom/loc/de;->u:I

    sput-boolean v3, Lcom/loc/de;->v:Z

    sput-boolean v3, Lcom/loc/de;->w:Z

    sput v6, Lcom/loc/de;->x:I

    sput-wide v4, Lcom/loc/de;->y:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/loc/de;->z:Ljava/util/ArrayList;

    sput-boolean v3, Lcom/loc/de;->A:Z

    sput v6, Lcom/loc/de;->B:I

    sput-wide v4, Lcom/loc/de;->C:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/loc/de;->D:Ljava/util/ArrayList;

    sput-boolean v2, Lcom/loc/de;->G:Z

    sput-boolean v2, Lcom/loc/de;->H:Z

    sput v7, Lcom/loc/de;->I:I

    sput v7, Lcom/loc/de;->J:I

    sput-boolean v3, Lcom/loc/de;->K:Z

    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/loc/de;->L:J

    sput v6, Lcom/loc/de;->M:I

    sput-boolean v2, Lcom/loc/de;->N:Z

    sput-boolean v2, Lcom/loc/de;->O:Z

    sput-boolean v2, Lcom/loc/de;->P:Z

    sput-boolean v2, Lcom/loc/de;->Q:Z

    sput-boolean v2, Lcom/loc/de;->a:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/loc/de;->R:Ljava/util/List;

    sput-boolean v2, Lcom/loc/de;->S:Z

    sput-wide v4, Lcom/loc/de;->T:J

    sput v2, Lcom/loc/de;->U:I

    sput v2, Lcom/loc/de;->V:I

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/loc/df;
    .locals 5

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/loc/df;

    invoke-direct {v0}, Lcom/loc/df;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "b"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/loc/dy;->a(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/loc/df;->a:Z

    const-string v1, "t"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/df;->b:Ljava/lang/String;

    const-string v1, "st"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/loc/dy;->a(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/loc/df;->c:Z

    const-string v1, "i"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/loc/df;->d:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_1
    const-string v2, "AuthUtil"

    const-string v3, "getLocateObj"

    invoke-static {v1, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/loc/de;->m:Z

    return v0
.end method

.method public static a(J)Z
    .locals 6

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v0

    sget-boolean v2, Lcom/loc/de;->i:Z

    if-eqz v2, :cond_0

    sget-wide v2, Lcom/loc/de;->k:J

    sub-long v2, v0, v2

    sget-wide v4, Lcom/loc/de;->j:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    sub-long/2addr v0, p0

    sget-wide v2, Lcom/loc/de;->l:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Z
    .locals 5

    const-class v2, Lcom/loc/de;

    monitor-enter v2

    :try_start_0
    sput-object p0, Lcom/loc/de;->b:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "loc"

    const-string v3, "2.8.0"

    invoke-static {v1, v3}, Lcom/loc/cr;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/loc/eo;

    move-result-object v1

    invoke-static {p0}, Lcom/loc/cr;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v3}, Lcom/loc/dy;->a(Landroid/content/Context;Lcom/loc/eo;Ljava/lang/String;)Lcom/loc/dz;

    move-result-object v1

    iget v3, v1, Lcom/loc/dz;->b:I

    sput v3, Lcom/loc/de;->M:I

    invoke-static {v1}, Lcom/loc/de;->a(Lcom/loc/dz;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :goto_0
    monitor-exit v2

    return v0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "AuthUtil"

    const-string v4, "getConfig"

    invoke-static {v1, v3, v4}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static a(Lcom/loc/dz;)Z
    .locals 8

    .prologue
    const v7, 0x36ee80

    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 0
    .line 1000
    :try_start_0
    iget-object v2, p0, Lcom/loc/dz;->h:Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    const-string v3, "opflag"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/loc/dy;->a(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/loc/de;->r:Z

    sput-boolean v2, Lcom/loc/ci;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 0
    :cond_0
    :goto_0
    :try_start_1
    sget-boolean v2, Lcom/loc/de;->r:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_1

    .line 2000
    :try_start_2
    iget-object v2, p0, Lcom/loc/dz;->r:Lcom/loc/eb;

    if-eqz v2, :cond_1

    const-string v3, "OfflineLocation"

    const-string v4, "1.0.0"

    invoke-static {v2, v3, v4}, Lcom/loc/de;->a(Lcom/loc/eb;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/loc/de;->O:Z

    sget-object v2, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v3, "pref"

    const-string v4, "oAble"

    sget-boolean v5, Lcom/loc/de;->O:Z

    invoke-static {v2, v3, v4, v5}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 3000
    :cond_1
    :goto_1
    :try_start_3
    iget-object v2, p0, Lcom/loc/dz;->c:Lorg/json/JSONObject;

    if-eqz v2, :cond_3

    const-string v3, "callamapflag"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/loc/dy;->a(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/loc/de;->w:Z

    if-eqz v3, :cond_3

    const-string v3, "count"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/loc/de;->x:I

    const-string v3, "sysTime"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    sput-wide v4, Lcom/loc/de;->y:J

    const-string v3, "sn"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_2

    move v2, v0

    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    sget-object v4, Lcom/loc/de;->z:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1000
    :catch_0
    move-exception v2

    :try_start_4
    const-string v3, "AuthUtil"

    const-string v4, "loadConfigData_offlineLoc"

    invoke-static {v2, v3, v4}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 0
    :catch_1
    move-exception v1

    const-string v2, "AuthUtil"

    const-string v3, "loadconfig"

    invoke-static {v1, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return v0

    .line 2000
    :catch_2
    move-exception v2

    :try_start_5
    const-string v3, "AuthUtil"

    const-string v4, "loadConfigData_OfflineDex"

    invoke-static {v2, v3, v4}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 3000
    :cond_2
    :try_start_6
    sget v2, Lcom/loc/de;->x:I

    if-eq v2, v6, :cond_3

    sget-wide v2, Lcom/loc/de;->y:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    sget-object v2, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v3, "pref"

    const-string v4, "nowtime"

    invoke-static {v2, v3, v4}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    sget-wide v4, Lcom/loc/de;->y:J

    invoke-static {v4, v5, v2, v3}, Lcom/loc/dn;->b(JJ)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/loc/de;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/loc/de;->d(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 4000
    :cond_3
    :goto_4
    :try_start_7
    iget-object v2, p0, Lcom/loc/dz;->e:Lorg/json/JSONObject;

    if-eqz v2, :cond_5

    const-string v3, "amappushflag"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/loc/dy;->a(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/loc/de;->A:Z

    if-eqz v3, :cond_5

    const-string v3, "count"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/loc/de;->B:I

    const-string v3, "sysTime"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    sput-wide v4, Lcom/loc/de;->C:J

    const-string v3, "sn"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_4

    move v2, v0

    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_4

    sget-object v4, Lcom/loc/de;->D:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 3000
    :catch_3
    move-exception v2

    :try_start_8
    const-string v3, "AuthUtil"

    const-string v4, "loadConfigData_callAMapSer"

    invoke-static {v2, v3, v4}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_4

    .line 4000
    :cond_4
    :try_start_9
    sget v2, Lcom/loc/de;->B:I

    if-eq v2, v6, :cond_5

    sget-wide v2, Lcom/loc/de;->C:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    sget-object v2, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v3, "pref"

    const-string v4, "pushSerTime"

    invoke-static {v2, v3, v4}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    sget-wide v4, Lcom/loc/de;->C:J

    invoke-static {v4, v5, v2, v3}, Lcom/loc/dn;->b(JJ)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/loc/de;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/loc/de;->e(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    .line 5000
    :cond_5
    :goto_6
    :try_start_a
    iget-object v2, p0, Lcom/loc/dz;->f:Lorg/json/JSONObject;

    if-eqz v2, :cond_a

    const-string v3, "f"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/loc/dy;->a(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/loc/de;->G:Z

    const-string v3, "mco"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/loc/de;->t:I

    const-string v3, "co"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/loc/de;->u:I

    const-string v3, "it"

    const/16 v4, 0xe10

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    sput v3, Lcom/loc/de;->s:I

    if-ge v3, v7, :cond_6

    const v3, 0x36ee80

    sput v3, Lcom/loc/de;->s:I

    :cond_6
    const-string v3, "a"

    const-string v4, "\u63d0\u793a\u4fe1\u606f"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/loc/de;->c:Ljava/lang/String;

    const-string v3, "o"

    const-string v4, "\u786e\u8ba4"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/loc/de;->d:Ljava/lang/String;

    const-string v3, "c"

    const-string v4, "\u53d6\u6d88"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/loc/de;->e:Ljava/lang/String;

    const-string v3, "i"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/loc/de;->f:Ljava/lang/String;

    const-string v3, "u"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/loc/de;->g:Ljava/lang/String;

    const-string v3, "t"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/loc/de;->h:Ljava/lang/String;

    sget-object v2, Lcom/loc/de;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "null"

    sget-object v3, Lcom/loc/de;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    sget-object v2, Lcom/loc/de;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "null"

    sget-object v3, Lcom/loc/de;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    sget v2, Lcom/loc/de;->u:I

    sget v3, Lcom/loc/de;->t:I

    if-le v2, v3, :cond_a

    :cond_9
    const/4 v2, 0x0

    sput-boolean v2, Lcom/loc/de;->G:Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5

    .line 6000
    :cond_a
    :goto_7
    :try_start_b
    const-string v2, "loc"

    const-string v3, "2.8.0"

    invoke-static {v2, v3}, Lcom/loc/cr;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/loc/eo;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/dz;->o:Lcom/loc/ed;

    .line 7000
    if-eqz v3, :cond_16

    iget-object v4, v3, Lcom/loc/ed;->b:Ljava/lang/String;

    iget-object v5, v3, Lcom/loc/ed;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/loc/ed;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_b
    sget-object v3, Lcom/loc/de;->b:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/loc/ae;->a(Landroid/content/Context;Lcom/loc/ad;Lcom/loc/eo;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6

    .line 8000
    :goto_8
    :try_start_c
    iget-object v2, p0, Lcom/loc/dz;->p:Lcom/loc/ec;

    if-eqz v2, :cond_c

    iget-object v3, v2, Lcom/loc/ec;->a:Ljava/lang/String;

    sput-object v3, Lcom/loc/de;->E:Ljava/lang/String;

    iget-object v2, v2, Lcom/loc/ec;->b:Ljava/lang/String;

    sput-object v2, Lcom/loc/de;->F:Ljava/lang/String;

    sget-object v2, Lcom/loc/de;->E:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    sget-object v2, Lcom/loc/de;->F:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    new-instance v2, Lcom/loc/em;

    sget-object v3, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v4, "loc"

    sget-object v5, Lcom/loc/de;->E:Ljava/lang/String;

    sget-object v6, Lcom/loc/de;->F:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/loc/em;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9000
    iget-object v3, v2, Lcom/loc/em;->a:Lcom/loc/en;

    if-eqz v3, :cond_c

    iget-object v3, v2, Lcom/loc/em;->a:Lcom/loc/en;

    .line 10000
    iget-object v3, v3, Lcom/loc/en;->a:Ljava/lang/String;

    .line 9000
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, v2, Lcom/loc/em;->a:Lcom/loc/en;

    .line 11000
    iget-object v3, v3, Lcom/loc/en;->a:Ljava/lang/String;

    .line 9000
    const-string v4, "libJni_wgs2gcj.so"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v2, Lcom/loc/em;->a:Lcom/loc/en;

    .line 12000
    iget-object v3, v3, Lcom/loc/en;->a:Ljava/lang/String;

    .line 9000
    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7

    move-result v3

    if-nez v3, :cond_17

    .line 13000
    :cond_c
    :goto_9
    :try_start_d
    iget-object v2, p0, Lcom/loc/dz;->n:Lcom/loc/ea;

    if-eqz v2, :cond_d

    iget-boolean v2, v2, Lcom/loc/ea;->a:Z

    sput-boolean v2, Lcom/loc/de;->v:Z

    sget-object v2, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v3, "pref"

    const-string v4, "exception"

    sget-boolean v5, Lcom/loc/de;->v:Z

    invoke-static {v2, v3, v4, v5}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_8

    .line 14000
    :cond_d
    :goto_a
    :try_start_e
    iget-object v3, p0, Lcom/loc/dz;->g:Lorg/json/JSONObject;

    if-eqz v3, :cond_11

    const-string v2, "able"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/loc/dy;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "fs"

    invoke-static {v3, v2}, Lcom/loc/de;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/loc/df;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-boolean v4, v2, Lcom/loc/df;->c:Z

    sput-boolean v4, Lcom/loc/de;->m:Z
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_a

    :try_start_f
    iget-object v2, v2, Lcom/loc/df;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/loc/de;->n:I
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_9

    :cond_e
    :goto_b
    :try_start_10
    const-string v2, "us"

    invoke-static {v3, v2}, Lcom/loc/de;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/loc/df;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-boolean v4, v2, Lcom/loc/df;->c:Z

    sput-boolean v4, Lcom/loc/de;->o:Z

    iget-boolean v4, v2, Lcom/loc/df;->a:Z

    sput-boolean v4, Lcom/loc/de;->q:Z
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_a

    :try_start_11
    iget-object v2, v2, Lcom/loc/df;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/loc/de;->p:I
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_b

    :goto_c
    :try_start_12
    sget v2, Lcom/loc/de;->p:I

    const/4 v4, 0x2

    if-ge v2, v4, :cond_f

    const/4 v2, 0x0

    sput-boolean v2, Lcom/loc/de;->o:Z

    :cond_f
    const-string v2, "rs"

    invoke-static {v3, v2}, Lcom/loc/de;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/loc/df;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-boolean v3, v2, Lcom/loc/df;->c:Z

    sput-boolean v3, Lcom/loc/de;->i:Z

    if-eqz v3, :cond_10

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v4

    sput-wide v4, Lcom/loc/de;->k:J

    iget v3, v2, Lcom/loc/df;->d:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    sput-wide v4, Lcom/loc/de;->l:J
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_a

    :cond_10
    :try_start_13
    iget-object v2, v2, Lcom/loc/df;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    sput-wide v2, Lcom/loc/de;->j:J
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_c

    .line 15000
    :cond_11
    :goto_d
    :try_start_14
    iget-object v2, p0, Lcom/loc/dz;->i:Lorg/json/JSONObject;

    if-eqz v2, :cond_12

    const-string v3, "able"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/loc/dy;->a(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/loc/de;->H:Z

    if-eqz v3, :cond_12

    const-string v3, "c"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_18

    const/16 v3, 0xbb8

    sput v3, Lcom/loc/de;->I:I

    :goto_e
    const-string v3, "t"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sput v2, Lcom/loc/de;->J:I
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_d

    .line 16000
    :cond_12
    :goto_f
    :try_start_15
    iget-object v2, p0, Lcom/loc/dz;->j:Lorg/json/JSONObject;

    if-eqz v2, :cond_13

    const-string v3, "able"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/loc/dy;->a(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/loc/de;->K:Z

    if-eqz v3, :cond_13

    const-string v3, "c"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    sput-wide v2, Lcom/loc/de;->L:J
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_e

    .line 17000
    :cond_13
    :goto_10
    :try_start_16
    iget-object v2, p0, Lcom/loc/dz;->q:Lcom/loc/eb;

    if-eqz v2, :cond_14

    const-string v3, "Collection"

    const-string v4, "1.0.0"

    invoke-static {v2, v3, v4}, Lcom/loc/de;->a(Lcom/loc/eb;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/loc/de;->N:Z
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_f

    .line 0
    :cond_14
    :goto_11
    :try_start_17
    invoke-static {p0}, Lcom/loc/de;->b(Lcom/loc/dz;)V

    invoke-static {p0}, Lcom/loc/de;->c(Lcom/loc/dz;)V

    move v0, v1

    goto/16 :goto_3

    .line 4000
    :catch_4
    move-exception v2

    const-string v3, "AuthUtil"

    const-string v4, "loadConfigData_callAMapPush"

    invoke-static {v2, v3, v4}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 5000
    :catch_5
    move-exception v2

    const-string v3, "AuthUtil"

    const-string v4, "loadConfigData_openAMap"

    invoke-static {v2, v3, v4}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_1

    goto/16 :goto_7

    .line 7000
    :cond_15
    :try_start_18
    new-instance v3, Lcom/loc/ad;

    invoke-direct {v3, v5, v4}, Lcom/loc/ad;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/loc/de;->b:Landroid/content/Context;

    invoke-static {v4, v3, v2}, Lcom/loc/ae;->a(Landroid/content/Context;Lcom/loc/ad;Lcom/loc/eo;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_6

    goto/16 :goto_8

    .line 6000
    :catch_6
    move-exception v2

    :try_start_19
    const-string v3, "AuthUtil"

    const-string v4, "loadConfigData_sdkUpdate"

    invoke-static {v2, v3, v4}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_1

    goto/16 :goto_8

    .line 7000
    :cond_16
    :try_start_1a
    sget-object v3, Lcom/loc/de;->b:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/loc/ae;->a(Landroid/content/Context;Lcom/loc/ad;Lcom/loc/eo;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_6

    goto/16 :goto_8

    .line 9000
    :cond_17
    :try_start_1b
    new-instance v3, Ljava/io/File;

    iget-object v4, v2, Lcom/loc/em;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v2}, Lcom/loc/em;->start()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_7

    goto/16 :goto_9

    .line 8000
    :catch_7
    move-exception v2

    :try_start_1c
    const-string v3, "AuthUtil"

    const-string v4, "loadConfigData_groupOffset"

    invoke-static {v2, v3, v4}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 13000
    :catch_8
    move-exception v2

    const-string v3, "AuthUtil"

    const-string v4, "loadConfigData_uploadException"

    invoke-static {v2, v3, v4}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_1

    goto/16 :goto_a

    .line 14000
    :catch_9
    move-exception v2

    :try_start_1d
    const-string v4, "AuthUtil"

    const-string v5, "loadconfig part2"

    invoke-static {v2, v4, v5}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_a

    goto/16 :goto_b

    :catch_a
    move-exception v2

    :try_start_1e
    const-string v3, "AuthUtil"

    const-string v4, "loadConfigData_locate"

    invoke-static {v2, v3, v4}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_1

    goto/16 :goto_d

    :catch_b
    move-exception v2

    :try_start_1f
    const-string v4, "AuthUtil"

    const-string v5, "loadconfig part1"

    invoke-static {v2, v4, v5}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :catch_c
    move-exception v2

    const-string v3, "AuthUtil"

    const-string v4, "loadconfig part"

    invoke-static {v2, v3, v4}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_a

    goto/16 :goto_d

    .line 15000
    :cond_18
    mul-int/lit16 v3, v3, 0x3e8

    :try_start_20
    sput v3, Lcom/loc/de;->I:I
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_d

    goto/16 :goto_e

    :catch_d
    move-exception v2

    :try_start_21
    const-string v3, "AuthUtil"

    const-string v4, "loadConfigData_ngps"

    invoke-static {v2, v3, v4}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 16000
    :catch_e
    move-exception v2

    const-string v3, "AuthUtil"

    const-string v4, "loadConfigData_cacheAble"

    invoke-static {v2, v3, v4}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 17000
    :catch_f
    move-exception v2

    const-string v3, "AuthUtil"

    const-string v4, "loadConfigData_CollectorDex"

    invoke-static {v2, v3, v4}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_1

    goto/16 :goto_11
.end method

.method private static declared-synchronized a(Lcom/loc/eb;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const-class v2, Lcom/loc/de;

    monitor-enter v2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/eb;->a:Z

    iget-object v1, p0, Lcom/loc/eb;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/eb;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/loc/eb;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1, p2}, Lcom/loc/cr;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/loc/eo;

    move-result-object v4

    new-instance v5, Lcom/loc/ad;

    invoke-direct {v5, v1, v3}, Lcom/loc/ad;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/loc/de;->b:Landroid/content/Context;

    invoke-static {v1, v5, v4}, Lcom/loc/ae;->a(Landroid/content/Context;Lcom/loc/ad;Lcom/loc/eo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    return v0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v3, "AuthUtil"

    const-string v4, "downLoadPluginDex"

    invoke-static {v1, v3, v4}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static b()I
    .locals 1

    sget v0, Lcom/loc/de;->n:I

    return v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    const-string v0, "pref"

    const-string v1, "exception"

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/loc/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/loc/de;->v:Z

    invoke-static {p0}, Lcom/loc/de;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string v0, "pref"

    const-string v1, "oAble"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/loc/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/loc/de;->O:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AuthUtil"

    const-string v2, "loadLastAbleState p1"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AuthUtil"

    const-string v2, "loadLastAbleState p2"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static declared-synchronized b(Lcom/loc/dz;)V
    .locals 4

    const-class v1, Lcom/loc/de;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/loc/dz;->k:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const-string v2, "able"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/loc/dy;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/loc/de;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v2, "loc"

    invoke-static {v0, v2}, Lcom/loc/ae;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "AuthUtil"

    const-string v3, "loadConfigData_CallBackDex"

    invoke-static {v0, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(J)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 0
    sget-boolean v2, Lcom/loc/de;->H:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/loc/dn;->a()J

    move-result-wide v2

    sub-long v4, v2, p0

    sget v6, Lcom/loc/de;->I:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    sget v4, Lcom/loc/de;->J:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v5, "pref"

    const-string v6, "ngpsTime"

    invoke-static {v4, v5, v6}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/loc/dn;->c(JJ)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v0, Lcom/loc/de;->b:Landroid/content/Context;

    .line 18000
    :try_start_0
    const-string v4, "pref"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "ngpsTime"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v2, "ngpsCount"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/loc/dl;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 0
    :goto_1
    sget-object v0, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v2, "pref"

    const-string v3, "ngpsCount"

    invoke-static {v0, v2, v3, v1}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v1

    goto :goto_0

    .line 18000
    :catch_0
    move-exception v0

    const-string v2, "AuthUtil"

    const-string v3, "resetPrefsNGPS"

    invoke-static {v0, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 0
    :cond_3
    sget-object v2, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v3, "pref"

    const-string v4, "ngpsCount"

    invoke-static {v2, v3, v4}, Lcom/loc/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/loc/de;->J:I

    if-ge v2, v3, :cond_0

    add-int/lit8 v0, v2, 0x1

    sget-object v2, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v3, "pref"

    const-string v4, "ngpsCount"

    invoke-static {v2, v3, v4, v0}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v1

    goto :goto_0
.end method

.method public static declared-synchronized c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 0
    const-class v1, Lcom/loc/de;

    monitor-enter v1

    :try_start_0
    const-string v0, "loc"

    const-string v2, "2.8.0"

    invoke-static {v0, v2}, Lcom/loc/cr;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/loc/eo;

    move-result-object v2

    sget-boolean v0, Lcom/loc/de;->v:Z

    .line 19000
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v2, Lcom/loc/eo;->a:I

    .line 0
    invoke-static {p0, v2}, Lcom/loc/ey;->a(Landroid/content/Context;Lcom/loc/eo;)Lcom/loc/ey;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v1

    return-void

    .line 19000
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static declared-synchronized c(Lcom/loc/dz;)V
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 0
    const-class v3, Lcom/loc/de;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/loc/dz;->d:Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    const-string v2, "able"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/loc/dy;->a(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/loc/de;->S:Z

    const-string v2, "sysTime"

    invoke-static {}, Lcom/loc/dn;->a()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lcom/loc/de;->T:J

    const-string v2, "n"

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/loc/de;->U:I

    const-string v2, "nh"

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/loc/de;->V:I

    sget-boolean v2, Lcom/loc/de;->S:Z

    if-eqz v2, :cond_4

    sget v2, Lcom/loc/de;->U:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    sget v2, Lcom/loc/de;->U:I

    sget v4, Lcom/loc/de;->V:I

    if-lt v2, v4, :cond_4

    :cond_0
    const-string v2, "l"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v2, v1

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ge v2, v0, :cond_4

    :try_start_1
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    new-instance v6, Lcom/loc/dg;

    invoke-direct {v6}, Lcom/loc/dg;-><init>()V

    const-string v0, "able"

    const-string v7, "false"

    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    invoke-static {v0, v7}, Lcom/loc/dy;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 20000
    iput-boolean v0, v6, Lcom/loc/dg;->a:Z

    .line 0
    if-nez v0, :cond_1

    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    const-string v0, "pn"

    const-string v7, ""

    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21000
    iput-object v0, v6, Lcom/loc/dg;->b:Ljava/lang/String;

    .line 0
    const-string v0, "cn"

    const-string v7, ""

    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22000
    iput-object v0, v6, Lcom/loc/dg;->c:Ljava/lang/String;

    .line 0
    const-string v0, "a"

    const-string v7, ""

    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23000
    iput-object v0, v6, Lcom/loc/dg;->e:Ljava/lang/String;

    .line 0
    const-string v0, "b"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_3

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v0, v9, :cond_2

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v11, "k"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "v"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 24000
    :cond_2
    :try_start_3
    iput-object v8, v6, Lcom/loc/dg;->d:Ljava/util/List;

    .line 0
    :cond_3
    const-string v0, "is"

    const-string v7, "false"

    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/loc/dy;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 25000
    iput-boolean v0, v6, Lcom/loc/dg;->f:Z

    .line 0
    sget-object v0, Lcom/loc/de;->R:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    const-string v1, "AuthUtil"

    const-string v2, "loadConfigData_otherServiceList"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :catch_2
    move-exception v9

    goto :goto_3
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Lcom/loc/de;->o:Z

    return v0
.end method

.method public static c(J)Z
    .locals 8

    const/4 v0, 0x0

    sget-boolean v1, Lcom/loc/de;->K:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/loc/dn;->a()J

    move-result-wide v2

    sub-long/2addr v2, p0

    sget-wide v4, Lcom/loc/de;->L:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_2

    sget-wide v4, Lcom/loc/de;->L:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static d()I
    .locals 1

    sget v0, Lcom/loc/de;->p:I

    return v0
.end method

.method private static d(Landroid/content/Context;)V
    .locals 6

    :try_start_0
    const-string v0, "pref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-wide v2, Lcom/loc/de;->y:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const-string v1, "nowtime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    sget v1, Lcom/loc/de;->x:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const-string v1, "count"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_1
    invoke-static {v0}, Lcom/loc/dl;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    return-void

    :cond_0
    :try_start_1
    const-string v1, "nowtime"

    sget-wide v2, Lcom/loc/de;->y:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v1, "nowtime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AuthUtil"

    const-string v2, "resetPrefsBind"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :try_start_3
    const-string v1, "count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method private static e(Landroid/content/Context;)V
    .locals 6

    :try_start_0
    const-string v0, "pref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-wide v2, Lcom/loc/de;->C:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const-string v1, "pushSerTime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    sget v1, Lcom/loc/de;->B:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const-string v1, "pushCount"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_1
    invoke-static {v0}, Lcom/loc/dl;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    return-void

    :cond_0
    :try_start_1
    const-string v1, "pushSerTime"

    sget-wide v2, Lcom/loc/de;->C:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v1, "pushSerTime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AuthUtil"

    const-string v2, "resetPrefsBind"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :try_start_3
    const-string v1, "pushCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public static e()Z
    .locals 1

    sget-boolean v0, Lcom/loc/de;->q:Z

    return v0
.end method

.method public static f()Z
    .locals 1

    sget-boolean v0, Lcom/loc/de;->r:Z

    sput-boolean v0, Lcom/loc/ci;->a:Z

    sget-boolean v0, Lcom/loc/de;->r:Z

    return v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/loc/de;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/loc/de;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/loc/de;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/loc/de;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/loc/de;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/loc/de;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static m()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/loc/de;->z:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static n()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/loc/de;->D:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static o()Z
    .locals 1

    sget-boolean v0, Lcom/loc/de;->v:Z

    return v0
.end method

.method public static p()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-boolean v2, Lcom/loc/de;->w:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v2, Lcom/loc/de;->x:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    sget-wide v2, Lcom/loc/de;->y:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v3, "pref"

    const-string v4, "nowtime"

    invoke-static {v2, v3, v4}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    sget-wide v4, Lcom/loc/de;->y:J

    invoke-static {v4, v5, v2, v3}, Lcom/loc/dn;->b(JJ)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v0, Lcom/loc/de;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/de;->d(Landroid/content/Context;)V

    sget-object v0, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v2, "pref"

    const-string v3, "count"

    invoke-static {v0, v2, v3, v1}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v1

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v3, "pref"

    const-string v4, "count"

    invoke-static {v2, v3, v4}, Lcom/loc/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/loc/de;->x:I

    if-ge v2, v3, :cond_0

    add-int/lit8 v0, v2, 0x1

    sget-object v2, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v3, "pref"

    const-string v4, "count"

    invoke-static {v2, v3, v4, v0}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v1

    goto :goto_0
.end method

.method public static q()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-boolean v2, Lcom/loc/de;->A:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v2, Lcom/loc/de;->B:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    sget-wide v2, Lcom/loc/de;->C:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v3, "pref"

    const-string v4, "pushSerTime"

    invoke-static {v2, v3, v4}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    sget-wide v4, Lcom/loc/de;->C:J

    invoke-static {v4, v5, v2, v3}, Lcom/loc/dn;->b(JJ)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v0, Lcom/loc/de;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/de;->e(Landroid/content/Context;)V

    sget-object v0, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v2, "pref"

    const-string v3, "pushCount"

    invoke-static {v0, v2, v3, v1}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v1

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v3, "pref"

    const-string v4, "pushCount"

    invoke-static {v2, v3, v4}, Lcom/loc/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/loc/de;->B:I

    if-ge v2, v3, :cond_0

    add-int/lit8 v0, v2, 0x1

    sget-object v2, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v3, "pref"

    const-string v4, "pushCount"

    invoke-static {v2, v3, v4, v0}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v1

    goto :goto_0
.end method

.method public static declared-synchronized r()Z
    .locals 10

    const/4 v0, 0x0

    const-class v1, Lcom/loc/de;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/loc/de;->G:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    :try_start_1
    sget v2, Lcom/loc/de;->u:I

    if-lez v2, :cond_0

    sget v2, Lcom/loc/de;->t:I

    if-lez v2, :cond_0

    sget v2, Lcom/loc/de;->u:I

    sget v3, Lcom/loc/de;->t:I

    if-gt v2, v3, :cond_0

    sget-object v2, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v3, "abcd"

    const-string v4, "lct"

    invoke-static {v2, v3, v4}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    sget-object v4, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v5, "abcd"

    const-string v6, "lst"

    invoke-static {v4, v5, v6}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-gez v8, :cond_2

    sget-object v2, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v3, "abcd"

    const-string v4, "lct"

    invoke-static {v2, v3, v4, v6, v7}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    sub-long v2, v6, v2

    const-wide/32 v8, 0x5265c00

    cmp-long v2, v2, v8

    if-lez v2, :cond_3

    :try_start_2
    sget-object v2, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v3, "abcd"

    const-string v8, "lct"

    invoke-static {v2, v3, v8, v6, v7}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    sget-object v2, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v3, "abcd"

    const-string v8, "t"

    const/4 v9, 0x0

    invoke-static {v2, v3, v8, v9}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    sub-long v2, v6, v4

    sget v4, Lcom/loc/de;->s:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    sget-object v2, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v3, "abcd"

    const-string v4, "t"

    invoke-static {v2, v3, v4}, Lcom/loc/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sget v3, Lcom/loc/de;->t:I

    if-gt v2, v3, :cond_0

    sget-object v0, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v3, "abcd"

    const-string v4, "lst"

    invoke-static {v0, v3, v4, v6, v7}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    sget-object v0, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v3, "abcd"

    const-string v4, "t"

    invoke-static {v0, v3, v4, v2}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public static s()Z
    .locals 1

    sget-boolean v0, Lcom/loc/de;->K:Z

    return v0
.end method

.method public static declared-synchronized t()I
    .locals 2

    const-class v0, Lcom/loc/de;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/loc/de;->M:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static u()Z
    .locals 1

    sget-boolean v0, Lcom/loc/de;->N:Z

    return v0
.end method

.method public static v()Z
    .locals 1

    sget-boolean v0, Lcom/loc/de;->O:Z

    return v0
.end method

.method public static declared-synchronized w()Z
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 0
    const-class v2, Lcom/loc/de;

    monitor-enter v2

    :try_start_0
    sget-boolean v3, Lcom/loc/de;->S:Z

    if-eqz v3, :cond_0

    sget v3, Lcom/loc/de;->U:I

    if-eqz v3, :cond_0

    sget v3, Lcom/loc/de;->V:I

    if-eqz v3, :cond_0

    sget-wide v4, Lcom/loc/de;->T:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    sget v3, Lcom/loc/de;->U:I

    if-eq v3, v12, :cond_2

    sget v3, Lcom/loc/de;->U:I

    sget v4, Lcom/loc/de;->V:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v3, v4, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    monitor-exit v2

    return v0

    :cond_2
    :try_start_1
    sget v3, Lcom/loc/de;->U:I

    if-ne v3, v12, :cond_3

    sget v3, Lcom/loc/de;->V:I

    if-eq v3, v12, :cond_1

    :cond_3
    sget-object v3, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v4, "pref"

    const-string v5, "ots"

    invoke-static {v3, v4, v5}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    sget-object v3, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v6, "pref"

    const-string v7, "otsh"

    invoke-static {v3, v6, v7}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    sget-object v3, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v8, "pref"

    const-string v9, "otn"

    invoke-static {v3, v8, v9}, Lcom/loc/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget-object v8, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v9, "pref"

    const-string v10, "otnh"

    invoke-static {v8, v9, v10}, Lcom/loc/dl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    sget v9, Lcom/loc/de;->U:I

    if-eq v9, v12, :cond_7

    sget-wide v10, Lcom/loc/de;->T:J

    invoke-static {v10, v11, v4, v5}, Lcom/loc/dn;->b(JJ)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v1, Lcom/loc/de;->b:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26000
    :try_start_2
    const-string v3, "pref"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "ots"

    sget-wide v4, Lcom/loc/de;->T:J

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v3, "otsh"

    sget-wide v4, Lcom/loc/de;->T:J

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v3, "otn"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v3, "otnh"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {v1}, Lcom/loc/dl;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 0
    :goto_1
    :try_start_3
    sget-object v1, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v3, "pref"

    const-string v4, "otn"

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v3, "pref"

    const-string v4, "otnh"

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 26000
    :catch_0
    move-exception v1

    :try_start_4
    const-string v3, "AuthUtil"

    const-string v4, "resetPrefsBind"

    invoke-static {v1, v3, v4}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 0
    :cond_4
    sget v4, Lcom/loc/de;->U:I

    if-ge v3, v4, :cond_7

    sget v4, Lcom/loc/de;->V:I

    if-ne v4, v12, :cond_5

    add-int/lit8 v1, v3, 0x1

    sget-object v3, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v4, "pref"

    const-string v5, "otn"

    invoke-static {v3, v4, v5, v1}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v3, "pref"

    const-string v4, "otnh"

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_5
    sget-wide v4, Lcom/loc/de;->T:J

    invoke-static {v4, v5, v6, v7}, Lcom/loc/dn;->a(JJ)Z

    move-result v4

    if-nez v4, :cond_6

    sget-object v1, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v4, "pref"

    const-string v5, "otsh"

    sget-wide v6, Lcom/loc/de;->T:J

    invoke-static {v1, v4, v5, v6, v7}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    add-int/lit8 v1, v3, 0x1

    sget-object v3, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v4, "pref"

    const-string v5, "otn"

    invoke-static {v3, v4, v5, v1}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v3, "pref"

    const-string v4, "otnh"

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_6
    sget v4, Lcom/loc/de;->V:I

    if-ge v8, v4, :cond_7

    add-int/lit8 v1, v3, 0x1

    add-int/lit8 v3, v8, 0x1

    sget-object v4, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v5, "pref"

    const-string v6, "otn"

    invoke-static {v4, v5, v6, v1}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v4, "pref"

    const-string v5, "otnh"

    invoke-static {v1, v4, v5, v3}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_7
    sget v3, Lcom/loc/de;->U:I

    if-ne v3, v12, :cond_a

    sget-object v3, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v4, "pref"

    const-string v5, "otn"

    const/4 v9, 0x0

    invoke-static {v3, v4, v5, v9}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    sget v3, Lcom/loc/de;->V:I

    if-ne v3, v12, :cond_8

    sget-object v1, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v3, "pref"

    const-string v4, "otnh"

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_8
    sget-wide v4, Lcom/loc/de;->T:J

    invoke-static {v4, v5, v6, v7}, Lcom/loc/dn;->a(JJ)Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v1, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v3, "pref"

    const-string v4, "otsh"

    sget-wide v6, Lcom/loc/de;->T:J

    invoke-static {v1, v3, v4, v6, v7}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    sget-object v1, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v3, "pref"

    const-string v4, "otnh"

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_9
    sget v3, Lcom/loc/de;->V:I

    if-ge v8, v3, :cond_a

    add-int/lit8 v1, v8, 0x1

    sget-object v3, Lcom/loc/de;->b:Landroid/content/Context;

    const-string v4, "pref"

    const-string v5, "otnh"

    invoke-static {v3, v4, v5, v1}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto/16 :goto_0
.end method

.method public static declared-synchronized x()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/loc/dg;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/loc/de;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/loc/de;->R:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
