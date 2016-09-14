.class public Lcom/umeng/a/a/c;
.super Ljava/lang/Object;
.source "Header.java"


# static fields
.field private static final C:Ljava/lang/String;


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field private final D:Ljava/lang/String;

.field private final E:Ljava/lang/String;

.field private final F:Ljava/lang/String;

.field private final G:Ljava/lang/String;

.field private final H:Ljava/lang/String;

.field private final I:Ljava/lang/String;

.field private final J:Ljava/lang/String;

.field private final K:Ljava/lang/String;

.field private final L:Ljava/lang/String;

.field private final M:Ljava/lang/String;

.field private final N:Ljava/lang/String;

.field private final O:Ljava/lang/String;

.field private final P:Ljava/lang/String;

.field private final Q:Ljava/lang/String;

.field private final R:Ljava/lang/String;

.field private final S:Ljava/lang/String;

.field private final T:Ljava/lang/String;

.field private final U:Ljava/lang/String;

.field private final V:Ljava/lang/String;

.field private final W:Ljava/lang/String;

.field private final X:Ljava/lang/String;

.field private final Y:Ljava/lang/String;

.field private final Z:Ljava/lang/String;

.field public a:Ljava/lang/String;

.field private final aa:Ljava/lang/String;

.field private final ab:Ljava/lang/String;

.field private final ac:Ljava/lang/String;

.field private final ad:Ljava/lang/String;

.field private final ae:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:J

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:I

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/umeng/a/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/a/a/c;->C:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "appkey"

    iput-object v0, p0, Lcom/umeng/a/a/c;->D:Ljava/lang/String;

    .line 56
    const-string v0, "channel"

    iput-object v0, p0, Lcom/umeng/a/a/c;->E:Ljava/lang/String;

    .line 57
    const-string v0, "device_id"

    iput-object v0, p0, Lcom/umeng/a/a/c;->F:Ljava/lang/String;

    .line 58
    const-string v0, "idmd5"

    iput-object v0, p0, Lcom/umeng/a/a/c;->G:Ljava/lang/String;

    .line 59
    const-string v0, "mc"

    iput-object v0, p0, Lcom/umeng/a/a/c;->H:Ljava/lang/String;

    .line 60
    const-string v0, "req_time"

    iput-object v0, p0, Lcom/umeng/a/a/c;->I:Ljava/lang/String;

    .line 61
    const-string v0, "android_id"

    iput-object v0, p0, Lcom/umeng/a/a/c;->J:Ljava/lang/String;

    .line 62
    const-string v0, "serial_number"

    iput-object v0, p0, Lcom/umeng/a/a/c;->K:Ljava/lang/String;

    .line 64
    const-string v0, "device_model"

    iput-object v0, p0, Lcom/umeng/a/a/c;->L:Ljava/lang/String;

    .line 65
    const-string v0, "os"

    iput-object v0, p0, Lcom/umeng/a/a/c;->M:Ljava/lang/String;

    .line 66
    const-string v0, "os_version"

    iput-object v0, p0, Lcom/umeng/a/a/c;->N:Ljava/lang/String;

    .line 67
    const-string v0, "resolution"

    iput-object v0, p0, Lcom/umeng/a/a/c;->O:Ljava/lang/String;

    .line 68
    const-string v0, "cpu"

    iput-object v0, p0, Lcom/umeng/a/a/c;->P:Ljava/lang/String;

    .line 69
    const-string v0, "gpu_vender"

    iput-object v0, p0, Lcom/umeng/a/a/c;->Q:Ljava/lang/String;

    .line 70
    const-string v0, "gpu_renderer"

    iput-object v0, p0, Lcom/umeng/a/a/c;->R:Ljava/lang/String;

    .line 72
    const-string v0, "app_version"

    iput-object v0, p0, Lcom/umeng/a/a/c;->S:Ljava/lang/String;

    .line 73
    const-string v0, "version_code"

    iput-object v0, p0, Lcom/umeng/a/a/c;->T:Ljava/lang/String;

    .line 74
    const-string v0, "package_name"

    iput-object v0, p0, Lcom/umeng/a/a/c;->U:Ljava/lang/String;

    .line 76
    const-string v0, "sdk_type"

    iput-object v0, p0, Lcom/umeng/a/a/c;->V:Ljava/lang/String;

    .line 77
    const-string v0, "sdk_version"

    iput-object v0, p0, Lcom/umeng/a/a/c;->W:Ljava/lang/String;

    .line 79
    const-string v0, "timezone"

    iput-object v0, p0, Lcom/umeng/a/a/c;->X:Ljava/lang/String;

    .line 80
    const-string v0, "country"

    iput-object v0, p0, Lcom/umeng/a/a/c;->Y:Ljava/lang/String;

    .line 81
    const-string v0, "language"

    iput-object v0, p0, Lcom/umeng/a/a/c;->Z:Ljava/lang/String;

    .line 83
    const-string v0, "access"

    iput-object v0, p0, Lcom/umeng/a/a/c;->aa:Ljava/lang/String;

    .line 84
    const-string v0, "access_subtype"

    iput-object v0, p0, Lcom/umeng/a/a/c;->ab:Ljava/lang/String;

    .line 85
    const-string v0, "carrier"

    iput-object v0, p0, Lcom/umeng/a/a/c;->ac:Ljava/lang/String;

    .line 93
    const-string v0, "wrapper_type"

    iput-object v0, p0, Lcom/umeng/a/a/c;->ad:Ljava/lang/String;

    .line 94
    const-string v0, "wrapper_version"

    iput-object v0, p0, Lcom/umeng/a/a/c;->ae:Ljava/lang/String;

    .line 97
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 367
    const-string v0, "Android"

    iput-object v0, p0, Lcom/umeng/a/a/c;->s:Ljava/lang/String;

    .line 368
    const-string v0, "2.8.1"

    iput-object v0, p0, Lcom/umeng/a/a/c;->t:Ljava/lang/String;

    .line 369
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 349
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/a/a/c;->i:Ljava/lang/String;

    .line 350
    const-string v0, "Android"

    iput-object v0, p0, Lcom/umeng/a/a/c;->j:Ljava/lang/String;

    .line 351
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/a/a/c;->k:Ljava/lang/String;

    .line 352
    invoke-static {p1}, Lcom/umeng/a/a/b;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/a/a/c;->l:Ljava/lang/String;

    .line 353
    invoke-static {}, Lcom/umeng/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/a/a/c;->m:Ljava/lang/String;

    .line 355
    invoke-static {p1}, Lcom/umeng/a/a/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/a/a/c;->g:Ljava/lang/String;

    .line 356
    invoke-static {}, Lcom/umeng/a/a/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/a/a/c;->h:Ljava/lang/String;

    .line 358
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 361
    invoke-static {p1}, Lcom/umeng/a/a/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/a/a/c;->p:Ljava/lang/String;

    .line 362
    invoke-static {p1}, Lcom/umeng/a/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/a/a/c;->q:Ljava/lang/String;

    .line 363
    invoke-static {p1}, Lcom/umeng/a/a/b;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/a/a/c;->r:Ljava/lang/String;

    .line 364
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 381
    invoke-static {p1}, Lcom/umeng/a/a/b;->f(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 383
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/umeng/a/a/c;->x:Ljava/lang/String;

    .line 384
    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/umeng/a/a/c;->y:Ljava/lang/String;

    .line 386
    invoke-static {p1}, Lcom/umeng/a/a/b;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/a/a/c;->z:Ljava/lang/String;

    .line 387
    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 267
    const-string v0, "sdk_type"

    iget-object v1, p0, Lcom/umeng/a/a/c;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    const-string v0, "sdk_version"

    iget-object v1, p0, Lcom/umeng/a/a/c;->t:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    return-void
.end method

.method private d(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lcom/umeng/a/a/c;->x:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 282
    const-string v0, "access"

    iget-object v1, p0, Lcom/umeng/a/a/c;->x:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/umeng/a/a/c;->y:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 284
    const-string v0, "access_subtype"

    iget-object v1, p0, Lcom/umeng/a/a/c;->y:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/umeng/a/a/c;->z:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 286
    const-string v0, "carrier"

    iget-object v1, p0, Lcom/umeng/a/a/c;->z:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    :cond_2
    return-void
.end method


# virtual methods
.method public final varargs a(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 333
    if-eqz p2, :cond_0

    array-length v0, p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 334
    const/4 v0, 0x0

    aget-object v0, p2, v0

    iput-object v0, p0, Lcom/umeng/a/a/c;->a:Ljava/lang/String;

    .line 335
    const/4 v0, 0x1

    aget-object v0, p2, v0

    iput-object v0, p0, Lcom/umeng/a/a/c;->b:Ljava/lang/String;

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/umeng/a/a/c;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 339
    invoke-static {p1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->getMessageAppkey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/a/a/c;->a:Ljava/lang/String;

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/umeng/a/a/c;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 341
    invoke-static {p1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->getMessageChannel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/a/a/c;->b:Ljava/lang/String;

    .line 343
    :cond_2
    invoke-static {p1}, Lcom/umeng/a/a/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/a/a/c;->c:Ljava/lang/String;

    .line 344
    invoke-static {p1}, Lcom/umeng/a/a/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/a/a/c;->d:Ljava/lang/String;

    .line 345
    invoke-static {p1}, Lcom/umeng/a/a/b;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/a/a/c;->e:Ljava/lang/String;

    .line 346
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 298
    .line 1186
    const-string v0, "appkey"

    iget-object v1, p0, Lcom/umeng/a/a/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1188
    iget-object v0, p0, Lcom/umeng/a/a/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_13

    const/16 v0, 0x18

    iget-object v1, p0, Lcom/umeng/a/a/c;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_13

    .line 1189
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/umeng/a/a/c;->c:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string v1, "utf-8"

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/umeng/a/a/c;->a:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/umeng/message/proguard/aa;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/a/a/c;->c:Ljava/lang/String;

    .line 1194
    :goto_0
    const-string v0, "device_id"

    iget-object v1, p0, Lcom/umeng/a/a/c;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1195
    const-string v0, "idmd5"

    iget-object v1, p0, Lcom/umeng/a/a/c;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1197
    iget-object v0, p0, Lcom/umeng/a/a/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1198
    const-string v0, "channel"

    iget-object v1, p0, Lcom/umeng/a/a/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1199
    :cond_0
    iget-object v0, p0, Lcom/umeng/a/a/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1200
    const-string v0, "mc"

    iget-object v1, p0, Lcom/umeng/a/a/c;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1201
    :cond_1
    iget-wide v0, p0, Lcom/umeng/a/a/c;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 1202
    const-string v0, "req_time"

    iget-wide v2, p0, Lcom/umeng/a/a/c;->f:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1204
    :cond_2
    iget-object v0, p0, Lcom/umeng/a/a/c;->g:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1205
    const-string v0, "android_id"

    iget-object v1, p0, Lcom/umeng/a/a/c;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1208
    :cond_3
    iget-object v0, p0, Lcom/umeng/a/a/c;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1209
    const-string v0, "serial_number"

    iget-object v1, p0, Lcom/umeng/a/a/c;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1223
    :cond_4
    iget-object v0, p0, Lcom/umeng/a/a/c;->i:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1224
    const-string v0, "device_model"

    iget-object v1, p0, Lcom/umeng/a/a/c;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1225
    :cond_5
    iget-object v0, p0, Lcom/umeng/a/a/c;->j:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1226
    const-string v0, "os"

    iget-object v1, p0, Lcom/umeng/a/a/c;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1227
    :cond_6
    iget-object v0, p0, Lcom/umeng/a/a/c;->k:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1228
    const-string v0, "os_version"

    iget-object v1, p0, Lcom/umeng/a/a/c;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1229
    :cond_7
    iget-object v0, p0, Lcom/umeng/a/a/c;->l:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1230
    const-string v0, "resolution"

    iget-object v1, p0, Lcom/umeng/a/a/c;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1231
    :cond_8
    iget-object v0, p0, Lcom/umeng/a/a/c;->m:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1232
    const-string v0, "cpu"

    iget-object v1, p0, Lcom/umeng/a/a/c;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1233
    :cond_9
    iget-object v0, p0, Lcom/umeng/a/a/c;->n:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1234
    const-string v0, "gpu_vender"

    iget-object v1, p0, Lcom/umeng/a/a/c;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1235
    :cond_a
    iget-object v0, p0, Lcom/umeng/a/a/c;->o:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 1236
    const-string v0, "gpu_vender"

    iget-object v1, p0, Lcom/umeng/a/a/c;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1250
    :cond_b
    iget-object v0, p0, Lcom/umeng/a/a/c;->p:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 1251
    const-string v0, "app_version"

    iget-object v1, p0, Lcom/umeng/a/a/c;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1252
    :cond_c
    iget-object v0, p0, Lcom/umeng/a/a/c;->q:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 1253
    const-string v0, "version_code"

    iget-object v1, p0, Lcom/umeng/a/a/c;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1254
    :cond_d
    iget-object v0, p0, Lcom/umeng/a/a/c;->r:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 1255
    const-string v0, "package_name"

    iget-object v1, p0, Lcom/umeng/a/a/c;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    :cond_e
    invoke-direct {p0, p1}, Lcom/umeng/a/a/c;->c(Lorg/json/JSONObject;)V

    .line 1272
    const-string v0, "timezone"

    iget v1, p0, Lcom/umeng/a/a/c;->u:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1274
    iget-object v0, p0, Lcom/umeng/a/a/c;->v:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 1275
    const-string v0, "country"

    iget-object v1, p0, Lcom/umeng/a/a/c;->v:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1276
    :cond_f
    iget-object v0, p0, Lcom/umeng/a/a/c;->w:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 1277
    const-string v0, "language"

    iget-object v1, p0, Lcom/umeng/a/a/c;->w:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    :cond_10
    invoke-direct {p0, p1}, Lcom/umeng/a/a/c;->d(Lorg/json/JSONObject;)V

    .line 1290
    iget-object v0, p0, Lcom/umeng/a/a/c;->A:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 1291
    const-string v0, "wrapper_type"

    iget-object v1, p0, Lcom/umeng/a/a/c;->A:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1292
    :cond_11
    iget-object v0, p0, Lcom/umeng/a/a/c;->B:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 1293
    const-string v0, "wrapper_version"

    iget-object v1, p0, Lcom/umeng/a/a/c;->B:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    :cond_12
    return-void

    .line 1191
    :cond_13
    new-array v0, v4, [Ljava/lang/String;

    iget-object v1, p0, Lcom/umeng/a/a/c;->c:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string v1, "utf-8"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/umeng/message/proguard/aa;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/a/a/c;->c:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public final varargs b(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 390
    invoke-virtual {p0, p1, p2}, Lcom/umeng/a/a/c;->a(Landroid/content/Context;[Ljava/lang/String;)V

    .line 391
    invoke-direct {p0, p1}, Lcom/umeng/a/a/c;->a(Landroid/content/Context;)V

    .line 392
    invoke-direct {p0, p1}, Lcom/umeng/a/a/c;->b(Landroid/content/Context;)V

    .line 393
    invoke-direct {p0}, Lcom/umeng/a/a/c;->a()V

    .line 2372
    invoke-static {p1}, Lcom/umeng/a/a/b;->g(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/umeng/a/a/c;->u:I

    .line 2374
    invoke-static {p1}, Lcom/umeng/a/a/b;->h(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 2376
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/umeng/a/a/c;->v:Ljava/lang/String;

    .line 2377
    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/umeng/a/a/c;->w:Ljava/lang/String;

    .line 395
    invoke-direct {p0, p1}, Lcom/umeng/a/a/c;->c(Landroid/content/Context;)V

    .line 396
    return-void
.end method

.method public final b(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 310
    .line 2216
    const-string v0, "appkey"

    iget-object v1, p0, Lcom/umeng/a/a/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2218
    iget-object v0, p0, Lcom/umeng/a/a/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2219
    const-string v0, "channel"

    iget-object v1, p0, Lcom/umeng/a/a/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2241
    :cond_0
    iget-object v0, p0, Lcom/umeng/a/a/c;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2242
    const-string v0, "device_model"

    iget-object v1, p0, Lcom/umeng/a/a/c;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2243
    :cond_1
    iget-object v0, p0, Lcom/umeng/a/a/c;->j:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2244
    const-string v0, "os"

    iget-object v1, p0, Lcom/umeng/a/a/c;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2245
    :cond_2
    iget-object v0, p0, Lcom/umeng/a/a/c;->k:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2246
    const-string v0, "os_version"

    iget-object v1, p0, Lcom/umeng/a/a/c;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2260
    :cond_3
    iget-object v0, p0, Lcom/umeng/a/a/c;->p:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 2261
    const-string v0, "app_version"

    iget-object v1, p0, Lcom/umeng/a/a/c;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2262
    :cond_4
    iget-object v0, p0, Lcom/umeng/a/a/c;->q:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 2263
    const-string v0, "version_code"

    iget-object v1, p0, Lcom/umeng/a/a/c;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    :cond_5
    invoke-direct {p0, p1}, Lcom/umeng/a/a/c;->c(Lorg/json/JSONObject;)V

    .line 314
    invoke-direct {p0, p1}, Lcom/umeng/a/a/c;->d(Lorg/json/JSONObject;)V

    .line 315
    return-void
.end method

.method public final varargs c(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 400
    invoke-virtual {p0, p1, p2}, Lcom/umeng/a/a/c;->a(Landroid/content/Context;[Ljava/lang/String;)V

    .line 401
    invoke-direct {p0, p1}, Lcom/umeng/a/a/c;->a(Landroid/content/Context;)V

    .line 402
    invoke-direct {p0, p1}, Lcom/umeng/a/a/c;->b(Landroid/content/Context;)V

    .line 403
    invoke-direct {p0}, Lcom/umeng/a/a/c;->a()V

    .line 404
    invoke-direct {p0, p1}, Lcom/umeng/a/a/c;->c(Landroid/content/Context;)V

    .line 405
    return-void
.end method
