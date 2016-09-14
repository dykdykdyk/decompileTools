.class public final Lcom/umeng/analytics/aa;
.super Ljava/lang/Object;
.source "StoreHelper.java"


# static fields
.field public static a:Landroid/content/Context;

.field private static c:Lcom/umeng/analytics/aa;

.field private static d:Ljava/lang/String;

.field private static e:J

.field private static f:J


# instance fields
.field public b:Lcom/umeng/analytics/ae;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/analytics/aa;->c:Lcom/umeng/analytics/aa;

    .line 69
    const-wide/32 v0, 0x48190800

    sput-wide v0, Lcom/umeng/analytics/aa;->e:J

    .line 70
    const-wide/32 v0, 0x200000

    sput-wide v0, Lcom/umeng/analytics/aa;->f:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/umeng/analytics/ae;

    invoke-direct {v0, p1}, Lcom/umeng/analytics/ae;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/analytics/aa;->b:Lcom/umeng/analytics/ae;

    .line 56
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/umeng/analytics/aa;
    .locals 2

    .prologue
    .line 59
    const-class v1, Lcom/umeng/analytics/aa;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/aa;->a:Landroid/content/Context;

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/aa;->d:Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/umeng/analytics/aa;->c:Lcom/umeng/analytics/aa;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/umeng/analytics/aa;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/aa;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/analytics/aa;->c:Lcom/umeng/analytics/aa;

    .line 65
    :cond_0
    sget-object v0, Lcom/umeng/analytics/aa;->c:Lcom/umeng/analytics/aa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static a()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 113
    sget-object v1, Lcom/umeng/analytics/aa;->a:Landroid/content/Context;

    .line 1024
    const-string v2, "umeng_general_config"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_0

    .line 115
    const-string v2, "appkey"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lu/aly/z;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    .line 8481
    const-string v0, "appkey"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8482
    const-string v0, "channel"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8484
    iget-object v0, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v0, v0, Lu/aly/am;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 8485
    const-string v0, "secret"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8487
    :cond_0
    const-string v0, "app_version"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8488
    const-string v0, "display_name"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8489
    const-string v0, "package_name"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8490
    const-string v0, "app_signature"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8491
    const-string v0, "version_code"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget v1, v1, Lu/aly/am;->h:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8492
    const-string v0, "wrapper_type"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8493
    const-string v0, "wrapper_version"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8494
    const-string v0, "sdk_type"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8495
    const-string v0, "sdk_version"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8496
    const-string v0, "vertical_type"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget v1, v1, Lu/aly/am;->m:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8497
    const-string v0, "idmd5"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8498
    const-string v0, "cpu"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8499
    const-string v0, "os"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8500
    const-string v0, "os_version"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8501
    const-string v0, "resolution"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8502
    const-string v0, "mc"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8503
    const-string v0, "device_id"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->t:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8504
    const-string v0, "device_model"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->u:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8505
    const-string v0, "device_board"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->v:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8506
    const-string v0, "device_brand"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->w:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8507
    const-string v0, "device_manutime"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-wide v2, v1, Lu/aly/am;->x:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 8508
    const-string v0, "device_manufacturer"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->y:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8509
    const-string v0, "device_manuid"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->z:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8510
    const-string v0, "device_name"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->A:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8511
    iget-object v0, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v0, v0, Lu/aly/am;->B:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 8512
    const-string v0, "sub_os_name"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->B:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8514
    :cond_1
    iget-object v0, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v0, v0, Lu/aly/am;->C:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 8515
    const-string v0, "sub_os_version"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->C:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8517
    :cond_2
    const-string v0, "timezone"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-wide v2, v1, Lu/aly/am;->D:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 8518
    const-string v0, "language"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->E:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8519
    const-string v0, "country"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->F:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8520
    const-string v0, "carrier"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->G:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8521
    const-string v0, "access"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->H:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8522
    const-string v0, "access_subtype"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->I:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8523
    const-string v1, "mccmnc"

    iget-object v0, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v0, v0, Lu/aly/am;->J:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8524
    const-string v0, "successful_requests"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-wide v2, v1, Lu/aly/am;->K:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 8525
    const-string v0, "failed_requests"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-wide v2, v1, Lu/aly/am;->L:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 8526
    const-string v0, "req_time"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-wide v2, v1, Lu/aly/am;->M:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 8527
    const-string v0, "imprint"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->N:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8528
    const-string v0, "id_tracking"

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->O:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8529
    const-string v0, "sdk_version:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";device_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->t:Ljava/lang/String;

    .line 8530
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";device_manufacturer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";device_board:"

    .line 8531
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";device_brand:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->w:Ljava/lang/String;

    .line 8532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";os_version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v1, v1, Lu/aly/am;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    return-void

    .line 8523
    :cond_3
    iget-object v0, p0, Lu/aly/z;->a:Lu/aly/am;

    iget-object v0, v0, Lu/aly/am;->J:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method static b()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 143
    sget-object v1, Lcom/umeng/analytics/aa;->a:Landroid/content/Context;

    .line 2024
    const-string v2, "umeng_general_config"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 144
    if-eqz v1, :cond_0

    .line 145
    const-string v2, "st"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    :cond_0
    return-object v0
.end method

.method static synthetic b(Lu/aly/z;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    .line 8547
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 8549
    iget-object v0, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->h:Lu/aly/ac;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->h:Lu/aly/ac;

    iget-object v0, v0, Lu/aly/ac;->a:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->h:Lu/aly/ac;

    iget-object v0, v0, Lu/aly/ac;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 8555
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 8557
    iget-object v0, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->h:Lu/aly/ac;

    iget-object v0, v0, Lu/aly/ac;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8558
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 8559
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8560
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 8561
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 8562
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_0

    .line 8563
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/aly/ad;

    .line 8564
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 8565
    const-string v9, "v_sum"

    iget-wide v10, v2, Lu/aly/ad;->a:J

    invoke-virtual {v8, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 8566
    const-string v9, "ts_sum"

    iget-wide v10, v2, Lu/aly/ad;->b:J

    invoke-virtual {v8, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 8567
    const-string v9, "tw_num"

    iget v10, v2, Lu/aly/ad;->c:I

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8568
    const-string v9, "count"

    iget v10, v2, Lu/aly/ad;->d:I

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8569
    const-string v9, "labels"

    new-instance v10, Lorg/json/JSONArray;

    iget-object v2, v2, Lu/aly/ad;->e:Ljava/util/List;

    invoke-direct {v10, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8570
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 8562
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 8572
    :cond_0
    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 8574
    :cond_1
    const-string v0, "ag"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8577
    :cond_2
    iget-object v0, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->h:Lu/aly/ac;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->h:Lu/aly/ac;

    iget-object v0, v0, Lu/aly/ac;->b:Ljava/util/Map;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->h:Lu/aly/ac;

    iget-object v0, v0, Lu/aly/ac;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 8582
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 8584
    iget-object v0, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->h:Lu/aly/ac;

    iget-object v0, v0, Lu/aly/ac;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 8585
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8586
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 8587
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8588
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 8589
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 8590
    const/4 v2, 0x0

    move v3, v2

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_3

    .line 8591
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/aly/ae;

    .line 8592
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 8593
    const-string v9, "value"

    iget v10, v2, Lu/aly/ae;->a:I

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8594
    const-string v9, "ts"

    iget-wide v10, v2, Lu/aly/ae;->b:J

    invoke-virtual {v8, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 8595
    const-string v9, "label"

    iget-object v2, v2, Lu/aly/ae;->c:Ljava/lang/String;

    invoke-virtual {v8, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8596
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 8590
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    .line 8598
    :cond_3
    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 8600
    :cond_4
    const-string v0, "ve_meta"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8602
    :cond_5
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 8603
    const-string v0, "cc"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8604
    const-string v0, "; cc: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8618
    :cond_6
    iget-object v0, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->a:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 8619
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 8620
    const/4 v0, 0x0

    move v3, v0

    :goto_4
    iget-object v0, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_c

    .line 8621
    iget-object v0, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ag;

    .line 8622
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 8623
    const/4 v1, 0x0

    move v4, v1

    :goto_5
    iget-object v1, v0, Lu/aly/ag;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_a

    .line 8624
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 8625
    iget-object v1, v0, Lu/aly/ag;->b:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/ai;

    .line 8626
    const-string v2, "id"

    iget-object v8, v1, Lu/aly/ai;->c:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8627
    const-string v2, "ts"

    iget-wide v8, v1, Lu/aly/ai;->d:J

    invoke-virtual {v7, v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 8628
    const-string v2, "du"

    iget-wide v8, v1, Lu/aly/ai;->e:J

    invoke-virtual {v7, v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 8629
    iget-object v1, v1, Lu/aly/ai;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 8630
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Map$Entry;

    .line 8631
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 8632
    instance-of v9, v1, Ljava/lang/String;

    if-nez v9, :cond_8

    instance-of v9, v1, Ljava/lang/Integer;

    if-nez v9, :cond_8

    instance-of v1, v1, Ljava/lang/Long;

    if-eqz v1, :cond_7

    .line 8633
    :cond_8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    .line 8636
    :cond_9
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 8623
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_5

    .line 8638
    :cond_a
    iget-object v1, v0, Lu/aly/ag;->a:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_b

    .line 8639
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 8640
    iget-object v0, v0, Lu/aly/ag;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8641
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 8620
    :cond_b
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_4

    .line 8644
    :cond_c
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 8645
    const-string v0, "ekv"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8646
    const-string v0, ";ekv:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8652
    :cond_d
    iget-object v0, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->b:Ljava/util/List;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 8653
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 8654
    const/4 v0, 0x0

    move v3, v0

    :goto_7
    iget-object v0, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_13

    .line 8655
    iget-object v0, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ag;

    .line 8656
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 8657
    const/4 v1, 0x0

    move v4, v1

    :goto_8
    iget-object v1, v0, Lu/aly/ag;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_11

    .line 8658
    iget-object v1, v0, Lu/aly/ag;->b:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/ai;

    .line 8659
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 8660
    const-string v2, "id"

    iget-object v8, v1, Lu/aly/ai;->c:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8661
    const-string v2, "ts"

    iget-wide v8, v1, Lu/aly/ai;->d:J

    invoke-virtual {v7, v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 8662
    const-string v2, "du"

    iget-wide v8, v1, Lu/aly/ai;->e:J

    invoke-virtual {v7, v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 8663
    iget-object v1, v1, Lu/aly/ai;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_e
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 8664
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Map$Entry;

    .line 8665
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 8666
    instance-of v9, v1, Ljava/lang/String;

    if-nez v9, :cond_f

    instance-of v9, v1, Ljava/lang/Integer;

    if-nez v9, :cond_f

    instance-of v1, v1, Ljava/lang/Long;

    if-eqz v1, :cond_e

    .line 8667
    :cond_f
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_9

    .line 8670
    :cond_10
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 8657
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_8

    .line 8672
    :cond_11
    iget-object v1, v0, Lu/aly/ag;->a:Ljava/lang/String;

    if-eqz v1, :cond_12

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_12

    .line 8673
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 8674
    iget-object v0, v0, Lu/aly/ag;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8675
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 8654
    :cond_12
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_7

    .line 8678
    :cond_13
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_14

    .line 8679
    const-string v0, "gkv"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8680
    const-string v0, "; gkv:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8688
    :cond_14
    iget-object v0, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->i:Ljava/util/List;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_16

    .line 8690
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 8693
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    iget-object v0, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_15

    .line 8694
    iget-object v0, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ah;

    .line 8695
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 8696
    const-string v4, "ts"

    iget-wide v6, v0, Lu/aly/ah;->a:J

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 8697
    const-string v4, "error_source"

    iget-wide v6, v0, Lu/aly/ah;->b:J

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 8698
    const-string v4, "context"

    iget-object v0, v0, Lu/aly/ah;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8699
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 8693
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 8701
    :cond_15
    const-string v0, "error"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8706
    :cond_16
    iget-object v0, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->c:Ljava/util/List;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1d

    .line 8709
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 8712
    const/4 v0, 0x0

    move v2, v0

    :goto_b
    iget-object v0, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1c

    .line 8713
    iget-object v0, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/an;

    .line 8714
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 8715
    const-string v1, "id"

    iget-object v5, v0, Lu/aly/an;->b:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8716
    const-string v1, "start_time"

    iget-wide v6, v0, Lu/aly/an;->c:J

    invoke-virtual {v4, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 8717
    const-string v1, "end_time"

    iget-wide v6, v0, Lu/aly/an;->d:J

    invoke-virtual {v4, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 8718
    const-string v1, "duration"

    iget-wide v6, v0, Lu/aly/an;->e:J

    invoke-virtual {v4, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 8720
    iget-object v1, v0, Lu/aly/an;->i:Lu/aly/ao;

    iget-wide v6, v1, Lu/aly/ao;->a:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_17

    iget-object v1, v0, Lu/aly/an;->i:Lu/aly/ao;

    iget-wide v6, v1, Lu/aly/ao;->b:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_18

    .line 8721
    :cond_17
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 8722
    const-string v5, "download_traffic"

    iget-object v6, v0, Lu/aly/an;->i:Lu/aly/ao;

    iget-wide v6, v6, Lu/aly/ao;->a:J

    invoke-virtual {v1, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 8723
    const-string v5, "upload_traffic"

    iget-object v6, v0, Lu/aly/an;->i:Lu/aly/ao;

    iget-wide v6, v6, Lu/aly/ao;->b:J

    invoke-virtual {v1, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 8724
    const-string v5, "traffic"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8728
    :cond_18
    iget-object v1, v0, Lu/aly/an;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1a

    .line 8730
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 8731
    iget-object v1, v0, Lu/aly/an;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/ak;

    .line 8732
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 8733
    const-string v8, "page_name"

    iget-object v9, v1, Lu/aly/ak;->a:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8734
    const-string v8, "duration"

    iget-wide v10, v1, Lu/aly/ak;->b:J

    invoke-virtual {v7, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 8735
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_c

    .line 8737
    :cond_19
    const-string v1, "pages"

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8740
    :cond_1a
    iget-object v1, v0, Lu/aly/an;->j:Lu/aly/aj;

    iget-wide v6, v1, Lu/aly/aj;->c:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_1b

    .line 8741
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 8742
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 8743
    const-string v6, "lat"

    iget-object v7, v0, Lu/aly/an;->j:Lu/aly/aj;

    iget-wide v8, v7, Lu/aly/aj;->a:D

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 8744
    const-string v6, "lng"

    iget-object v7, v0, Lu/aly/an;->j:Lu/aly/aj;

    iget-wide v8, v7, Lu/aly/aj;->b:D

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 8745
    const-string v6, "ts"

    iget-object v0, v0, Lu/aly/an;->j:Lu/aly/aj;

    iget-wide v8, v0, Lu/aly/aj;->c:J

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 8746
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 8747
    const-string v0, "locations"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8750
    :cond_1b
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 8712
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_b

    .line 8752
    :cond_1c
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1d

    .line 8753
    const-string v0, "sessions"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8754
    const-string v0, "; sessions:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8760
    :cond_1d
    iget-object v0, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->d:Lu/aly/aa;

    iget-wide v0, v0, Lu/aly/aa;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1e

    .line 8761
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8762
    const-string v1, "ts"

    iget-object v2, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v2, v2, Lu/aly/al;->d:Lu/aly/aa;

    iget-wide v2, v2, Lu/aly/aa;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 8763
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_1e

    .line 8764
    const-string v1, "activate_msg"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8765
    const-string v1, "; active_msg: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8772
    :cond_1e
    iget-object v0, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->e:Lu/aly/af;

    iget-boolean v0, v0, Lu/aly/af;->c:Z

    if-eqz v0, :cond_1f

    .line 8773
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8774
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 8775
    const-string v2, "interval"

    iget-object v3, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v3, v3, Lu/aly/al;->e:Lu/aly/af;

    iget-wide v4, v3, Lu/aly/af;->b:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 8776
    const-string v2, "latency"

    iget-object v3, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v3, v3, Lu/aly/al;->e:Lu/aly/af;

    iget-object v3, v3, Lu/aly/af;->a:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8777
    const-string v2, "latent"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8778
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_1f

    .line 8779
    const-string v1, "control_policy"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8780
    const-string v1, "; control_policy: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8787
    :cond_1f
    iget-object v0, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_21

    .line 8788
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 8789
    iget-object v0, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 8790
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 8791
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d

    .line 8793
    :cond_20
    const-string v0, "group_info"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8798
    :cond_21
    iget-object v0, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->g:Lu/aly/ab;

    iget-object v0, v0, Lu/aly/ab;->a:Ljava/lang/String;

    if-nez v0, :cond_22

    iget-object v0, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->g:Lu/aly/ab;

    iget-object v0, v0, Lu/aly/ab;->b:Ljava/lang/String;

    if-eqz v0, :cond_23

    .line 8799
    :cond_22
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8800
    const-string v1, "provider"

    iget-object v2, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v2, v2, Lu/aly/al;->g:Lu/aly/ab;

    iget-object v2, v2, Lu/aly/ab;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8801
    const-string v1, "puid"

    iget-object v2, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v2, v2, Lu/aly/al;->g:Lu/aly/ab;

    iget-object v2, v2, Lu/aly/ab;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8802
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_23

    .line 8803
    const-string v1, "active_user"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8804
    const-string v1, "; active_user: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8811
    :cond_23
    iget-object v0, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->j:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 8812
    const-string v0, "userlevel"

    iget-object v1, p0, Lu/aly/z;->b:Lu/aly/al;

    iget-object v1, v1, Lu/aly/al;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    :cond_24
    return-void
.end method

.method static c()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 165
    sget-object v1, Lcom/umeng/analytics/aa;->a:Landroid/content/Context;

    .line 3024
    const-string v2, "umeng_general_config"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 166
    if-eqz v1, :cond_0

    .line 167
    const-string v2, "vt"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 169
    :cond_0
    return v0
.end method

.method public static d()Lu/aly/z;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 182
    :try_start_0
    invoke-static {}, Lcom/umeng/analytics/aa;->h()Ljava/lang/String;

    move-result-object v0

    .line 183
    new-instance v8, Ljava/io/File;

    sget-object v1, Lcom/umeng/analytics/aa;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3073
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 3075
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-wide v0, Lcom/umeng/analytics/aa;->f:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 3077
    sget-object v0, Lcom/umeng/analytics/aa;->a:Landroid/content/Context;

    .line 3129
    sput-object v0, Lu/aly/ej;->f:Landroid/content/Context;

    .line 3130
    invoke-static {}, Lu/aly/ev;->a()Lu/aly/ej;

    move-result-object v1

    .line 3077
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "__data_size_of"

    invoke-virtual/range {v1 .. v6}, Lu/aly/ej;->a(JJLjava/lang/String;)V

    .line 3079
    const/4 v0, 0x1

    .line 184
    :goto_0
    if-eqz v0, :cond_2

    .line 185
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 218
    :cond_0
    :goto_1
    return-object v7

    .line 3082
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {v8}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    :try_start_2
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 194
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/z;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 200
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 207
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    :goto_3
    move-object v7, v0

    .line 218
    goto :goto_1

    .line 202
    :catch_0
    move-exception v1

    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 213
    :catch_1
    move-exception v1

    .line 214
    :goto_4
    sget-boolean v2, Lu/aly/ct;->a:Z

    if-eqz v2, :cond_3

    .line 215
    invoke-static {v1}, Lu/aly/ct;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 209
    :catch_2
    move-exception v1

    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 196
    :catch_3
    move-exception v0

    move-object v1, v7

    move-object v2, v7

    :goto_5
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 198
    if-eqz v1, :cond_4

    .line 200
    :try_start_9
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 205
    :cond_4
    :goto_6
    if-eqz v2, :cond_7

    .line 207
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    move-object v0, v7

    .line 210
    goto :goto_3

    .line 202
    :catch_4
    move-exception v0

    :try_start_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 213
    :catch_5
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    goto :goto_4

    .line 209
    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    move-object v0, v7

    .line 210
    goto :goto_3

    .line 198
    :catchall_0
    move-exception v0

    move-object v1, v7

    move-object v2, v7

    :goto_7
    if-eqz v1, :cond_5

    .line 200
    :try_start_c
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    .line 205
    :cond_5
    :goto_8
    if-eqz v2, :cond_6

    .line 207
    :try_start_d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 210
    :cond_6
    :goto_9
    :try_start_e
    throw v0

    .line 202
    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 209
    :catch_8
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_9

    :cond_7
    move-object v0, v7

    .line 217
    goto :goto_3

    .line 198
    :catchall_1
    move-exception v0

    move-object v1, v7

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_7

    .line 196
    :catch_9
    move-exception v0

    move-object v1, v7

    goto :goto_5

    :catch_a
    move-exception v0

    goto :goto_5
.end method

.method static g()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 291
    sget-object v0, Lcom/umeng/analytics/aa;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mobclick_agent_user_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/umeng/analytics/aa;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 311
    sget-object v0, Lcom/umeng/analytics/aa;->a:Landroid/content/Context;

    .line 8024
    const-string v1, "umeng_general_config"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_1

    .line 315
    const-string v1, "versioncode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 316
    sget-object v1, Lcom/umeng/analytics/aa;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/cr;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 317
    if-eqz v0, :cond_0

    if-eq v1, v0, :cond_0

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mobclick_agent_cached_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/umeng/analytics/aa;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    :goto_0
    return-object v0

    .line 320
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mobclick_agent_cached_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/umeng/analytics/aa;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/aa;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/cr;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 323
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mobclick_agent_cached_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/umeng/analytics/aa;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/aa;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/cr;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic i()Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/umeng/analytics/aa;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a([B)V
    .locals 8

    .prologue
    .line 271
    iget-object v0, p0, Lcom/umeng/analytics/aa;->b:Lcom/umeng/analytics/ae;

    .line 6397
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 6405
    :cond_0
    :goto_0
    return-void

    .line 6400
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "um_cache_%d.env"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 6401
    new-instance v2, Ljava/io/File;

    iget-object v0, v0, Lcom/umeng/analytics/ae;->a:Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6403
    :try_start_0
    invoke-static {v2, p1}, Lu/aly/cs;->a(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Lu/aly/z;)[B
    .locals 4

    .prologue
    .line 446
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    const-string v2, "header"

    new-instance v3, Lcom/umeng/analytics/ac;

    invoke-direct {v3, p0, p1, v1}, Lcom/umeng/analytics/ac;-><init>(Lcom/umeng/analytics/aa;Lu/aly/z;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 457
    new-instance v2, Lcom/umeng/analytics/ad;

    invoke-direct {v2, p0, p1, v1}, Lcom/umeng/analytics/ad;-><init>(Lcom/umeng/analytics/aa;Lu/aly/z;Ljava/lang/StringBuilder;)V

    .line 462
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 463
    const-string v3, "body"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 468
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "serialize entry:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lu/aly/ct;->a(Ljava/lang/String;)V

    .line 469
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 474
    :goto_0
    return-object v0

    .line 470
    :catch_0
    move-exception v0

    .line 471
    const-string v1, "Fail to serialize log ..."

    invoke-static {v1, v0}, Lu/aly/ct;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 474
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 258
    sget-object v0, Lcom/umeng/analytics/aa;->a:Landroid/content/Context;

    .line 3307
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mobclick_agent_header_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/umeng/analytics/aa;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 259
    sget-object v0, Lcom/umeng/analytics/aa;->a:Landroid/content/Context;

    invoke-static {}, Lcom/umeng/analytics/aa;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 261
    sget-object v0, Lcom/umeng/analytics/aa;->a:Landroid/content/Context;

    .line 4129
    sput-object v0, Lu/aly/ej;->f:Landroid/content/Context;

    .line 4130
    invoke-static {}, Lu/aly/ev;->a()Lu/aly/ej;

    move-result-object v2

    .line 261
    new-instance v0, Lcom/umeng/analytics/ab;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/ab;-><init>(Lcom/umeng/analytics/aa;)V

    .line 4359
    iget-boolean v0, v2, Lu/aly/ej;->d:Z

    if-eqz v0, :cond_4

    .line 4360
    iget-wide v4, v2, Lu/aly/ej;->e:J

    cmp-long v0, v4, v8

    if-nez v0, :cond_0

    .line 4361
    invoke-virtual {v2}, Lu/aly/ej;->a()V

    .line 4363
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v2, Lu/aly/ej;->e:J

    .line 5121
    invoke-static {v4, v5}, Lu/aly/fb;->b(J)I

    move-result v0

    .line 5122
    invoke-static {v6, v7}, Lu/aly/fb;->b(J)I

    move-result v3

    .line 5123
    if-ne v0, v3, :cond_3

    .line 5124
    const/4 v0, 0x1

    .line 4365
    :goto_0
    if-nez v0, :cond_1

    .line 5299
    sget-object v3, Lu/aly/ej;->f:Landroid/content/Context;

    .line 6024
    const-string v4, "umeng_general_config"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 5300
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 5301
    const-string v4, "main_fest_mode"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5302
    const-string v4, "main_fest_timestamp"

    invoke-interface {v3, v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 5303
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5304
    iput-boolean v1, v2, Lu/aly/ej;->d:Z

    .line 4367
    iget-object v1, v2, Lu/aly/ej;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4370
    :cond_1
    iget-object v1, v2, Lu/aly/ej;->b:Lu/aly/fa;

    invoke-virtual {v1}, Lu/aly/fa;->a()V

    .line 4371
    new-instance v1, Lu/aly/em;

    invoke-direct {v1, v2}, Lu/aly/em;-><init>(Lu/aly/ej;)V

    .line 6145
    :try_start_0
    sget-object v2, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v2}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v2

    invoke-virtual {v2}, Lu/aly/as;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 6238
    const-string v3, "system"

    invoke-static {v2, v3}, Lu/aly/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 6239
    const-string v3, "aggregated"

    invoke-static {v2, v3}, Lu/aly/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 6241
    if-nez v0, :cond_2

    .line 6242
    const-string v0, "limitedck"

    invoke-static {v2, v0}, Lu/aly/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 6243
    const-string v0, "success"

    invoke-virtual {v1, v0}, Lu/aly/ef;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6150
    :cond_2
    sget-object v0, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/as;->c()V

    .line 6151
    :goto_1
    return-void

    :cond_3
    move v0, v1

    .line 5126
    goto :goto_0

    .line 6148
    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "notifyUploadSuccess error"

    invoke-static {v0}, Lu/aly/ct;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6150
    sget-object v0, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/as;->c()V

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/as;->c()V

    throw v0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/umeng/analytics/aa;->b:Lcom/umeng/analytics/ae;

    .line 7344
    iget-object v0, v0, Lcom/umeng/analytics/ae;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 7345
    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 7346
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 7349
    :cond_0
    const/4 v0, 0x0

    .line 275
    goto :goto_0
.end method
