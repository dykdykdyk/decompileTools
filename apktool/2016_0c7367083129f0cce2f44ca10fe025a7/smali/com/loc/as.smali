.class public Lcom/loc/as;
.super Ljava/lang/Object;
.source "APSServiceCore.java"

# interfaces
.implements Lcom/amap/api/location/APSServiceBase;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:J

.field private I:J

.field private J:Lcom/loc/bz;

.field private K:Z

.field private L:Ljava/lang/String;

.field a:Landroid/content/Context;

.field b:Z

.field c:Landroid/os/Messenger;

.field d:Ljava/lang/String;

.field e:Landroid/os/Messenger;

.field f:Lcom/loc/au;

.field g:Lcom/loc/at;

.field h:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field j:Z

.field volatile k:Z

.field l:Z

.field m:Ljava/lang/Object;

.field n:Lcom/autonavi/aps/amapapi/model/AmapLoc;

.field o:J

.field p:J

.field volatile q:I

.field r:Lorg/json/JSONObject;

.field s:Lcom/autonavi/aps/amapapi/model/AmapLoc;

.field volatile t:Ljava/net/ServerSocket;

.field u:Z

.field volatile v:Ljava/net/Socket;

.field w:Z

.field x:Lcom/loc/av;

.field private volatile y:Z

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/loc/as;->b:Z

    iput-object v3, p0, Lcom/loc/as;->c:Landroid/os/Messenger;

    iput-boolean v2, p0, Lcom/loc/as;->y:Z

    iput-object v3, p0, Lcom/loc/as;->d:Ljava/lang/String;

    new-instance v0, Lcom/loc/au;

    invoke-direct {v0, p0, p0}, Lcom/loc/au;-><init>(Lcom/loc/as;Lcom/loc/as;)V

    iput-object v0, p0, Lcom/loc/as;->f:Lcom/loc/au;

    iput-object v3, p0, Lcom/loc/as;->g:Lcom/loc/at;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/loc/as;->h:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/loc/as;->i:Ljava/util/Vector;

    iput v2, p0, Lcom/loc/as;->z:I

    iput-boolean v2, p0, Lcom/loc/as;->A:Z

    iput-boolean v2, p0, Lcom/loc/as;->B:Z

    iput-boolean v2, p0, Lcom/loc/as;->C:Z

    iput-boolean v2, p0, Lcom/loc/as;->D:Z

    iput-boolean v2, p0, Lcom/loc/as;->E:Z

    iput-boolean v2, p0, Lcom/loc/as;->F:Z

    iput-boolean v2, p0, Lcom/loc/as;->G:Z

    iput-wide v4, p0, Lcom/loc/as;->H:J

    iput-wide v4, p0, Lcom/loc/as;->I:J

    iput-object v3, p0, Lcom/loc/as;->J:Lcom/loc/bz;

    iput-boolean v2, p0, Lcom/loc/as;->j:Z

    iput-boolean v2, p0, Lcom/loc/as;->k:Z

    iput-boolean v2, p0, Lcom/loc/as;->l:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/as;->m:Ljava/lang/Object;

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/as;->o:J

    iput-wide v4, p0, Lcom/loc/as;->p:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/as;->K:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/as;->L:Ljava/lang/String;

    iput v2, p0, Lcom/loc/as;->q:I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/loc/as;->r:Lorg/json/JSONObject;

    iput-object v3, p0, Lcom/loc/as;->t:Ljava/net/ServerSocket;

    iput-boolean v2, p0, Lcom/loc/as;->u:Z

    iput-object v3, p0, Lcom/loc/as;->v:Ljava/net/Socket;

    iput-boolean v2, p0, Lcom/loc/as;->w:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/as;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/loc/as;)I
    .locals 1

    iget v0, p0, Lcom/loc/as;->z:I

    return v0
.end method

.method static synthetic a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 1

    invoke-static {p0, p1}, Lcom/loc/as;->b(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/loc/as;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/loc/as;->L:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/loc/as;Landroid/os/Messenger;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 6000
    :try_start_0
    invoke-static {}, Lcom/loc/de;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/loc/as;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/as;->h:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    move-object p1, v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :cond_1
    iget-wide v0, p0, Lcom/loc/as;->I:J

    invoke-static {v0, v1}, Lcom/loc/de;->a(J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/loc/as;->C:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/loc/as;->n:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/loc/as;->q:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/loc/as;->q:I

    if-ne v0, v3, :cond_3

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/as;->D:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/as;->C:Z

    :cond_3
    invoke-static {}, Lcom/loc/de;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/loc/as;->A:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/as;->A:Z

    iget-object v0, p0, Lcom/loc/as;->f:Lcom/loc/au;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/loc/au;->sendEmptyMessage(I)Z

    :cond_4
    invoke-static {}, Lcom/loc/de;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/loc/de;->d()I

    move-result v0

    if-le v0, v2, :cond_5

    iget-boolean v0, p0, Lcom/loc/as;->B:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/as;->B:Z

    iget-object v0, p0, Lcom/loc/as;->f:Lcom/loc/au;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/loc/au;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "checkConfig"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/as;Ljava/net/Socket;)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 13000
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x7530

    :try_start_0
    const-string v1, "jsonp1"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    array-length v6, v5

    if-le v6, v9, :cond_5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const-string v6, "\\?"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    array-length v6, v5

    if-le v6, v9, :cond_5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    array-length v6, v5
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-lez v6, :cond_5

    move-object v10, v1

    move v1, v0

    move-object v0, v10

    :goto_1
    :try_start_3
    array-length v6, v5

    if-ge v4, v6, :cond_4

    aget-object v6, v5, v4

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    array-length v7, v6

    if-le v7, v9, :cond_3

    const-string v7, "to"

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v1, 0x1

    aget-object v1, v6, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_1
    const-string v7, "callback"

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    aget-object v0, v6, v7

    :cond_2
    const-string v7, "_"

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_10
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move-object v10, v0

    move v0, v1

    move-object v1, v10

    :cond_5
    :try_start_4
    sget v4, Lcom/loc/cr;->e:I

    sput v0, Lcom/loc/cr;->e:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/loc/as;->s:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/loc/as;->s:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1388

    cmp-long v0, v6, v8

    if-lez v0, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/loc/as;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/dn;->d(Landroid/content/Context;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    if-nez v0, :cond_8

    :try_start_5
    iget-object v0, p0, Lcom/loc/as;->J:Lcom/loc/bz;

    invoke-virtual {v0}, Lcom/loc/bz;->a()Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/as;->s:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/as;->s:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "&&"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "({\'package\':\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/loc/as;->d:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\',\'error_code\':"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/loc/as;->s:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v5}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getErrorCode()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ",\'error\':\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/loc/as;->s:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v5}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getErrorInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\'})"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v3

    :cond_7
    :try_start_6
    sput v4, Lcom/loc/cr;->e:I

    :cond_8
    :goto_2
    if-nez v3, :cond_9

    iget-object v0, p0, Lcom/loc/as;->s:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "({\'package\':\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/loc/as;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\',\'error_code\':8,\'error\':\'unknown error\'})"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    iget-object v0, p0, Lcom/loc/as;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/dn;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "({\'package\':\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/loc/as;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\',\'error_code\':36,\'error\':\'app is background\'})"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v3

    :cond_9
    :try_start_7
    new-instance v0, Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v4, 0x1

    const-string v5, "UTF-8"

    invoke-direct {v0, v1, v4, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    const-string v1, "HTTP/1.0 200 OK"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Content-Length:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_9
    const-string v1, "APSServiceCore"

    const-string v2, "invoke part4"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "invoke part5"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_a
    const-string v5, "APSServiceCore"

    const-string v6, "invoke part1"

    invoke-static {v0, v5, v6}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    sput v4, Lcom/loc/cr;->e:I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_2

    :catch_3
    move-exception v0

    :goto_4
    :try_start_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "({\'package\':\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/loc/as;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\',\'error_code\':1,\'error\':\'params error\'})"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v1, "APSServiceCore"

    const-string v4, "invoke part2"

    invoke-static {v0, v1, v4}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    new-instance v0, Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v4, 0x1

    const-string v5, "UTF-8"

    invoke-direct {v0, v1, v4, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    const-string v1, "HTTP/1.0 200 OK"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Content-Length:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    :try_start_f
    const-string v1, "APSServiceCore"

    const-string v2, "invoke part4"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_10
    sput v4, Lcom/loc/cr;->e:I

    throw v0
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :catchall_1
    move-exception v0

    :goto_5
    :try_start_11
    new-instance v1, Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    const/4 v5, 0x1

    const-string v6, "UTF-8"

    invoke-direct {v1, v4, v5, v6}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    const-string v4, "HTTP/1.0 200 OK"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Content-Length:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "UTF-8"

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :try_start_12
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_8

    :goto_6
    :try_start_13
    throw v0
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_1

    :cond_a
    :try_start_14
    iget-object v0, p0, Lcom/loc/as;->s:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "({\'package\':\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/loc/as;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',\'error_code\':0,\'error\':\'\',\'location\':{\'y\':"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getLat()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\'precision\':"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getAccuracy()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\'x\':"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getLon()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "},\'version_code\':\'2.8.0\',\'version\':\'2.8.0\'})"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    move-result-object v3

    goto/16 :goto_3

    :catch_5
    move-exception v1

    :try_start_15
    const-string v3, "APSServiceCore"

    const-string v4, "invoke part3"

    invoke-static {v1, v3, v4}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    :try_start_16
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_6

    goto :goto_6

    :catch_6
    move-exception v1

    :try_start_17
    const-string v2, "APSServiceCore"

    const-string v3, "invoke part4"

    invoke-static {v1, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_1

    goto :goto_6

    :catchall_2
    move-exception v0

    :try_start_18
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_7

    :goto_7
    :try_start_19
    throw v0

    :catch_7
    move-exception v1

    const-string v2, "APSServiceCore"

    const-string v3, "invoke part4"

    invoke-static {v1, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catch_8
    move-exception v1

    const-string v2, "APSServiceCore"

    const-string v3, "invoke part4"

    invoke-static {v1, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_1

    goto/16 :goto_6

    :catch_9
    move-exception v0

    :try_start_1a
    const-string v1, "APSServiceCore"

    const-string v3, "invoke part3"

    invoke-static {v0, v1, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    :try_start_1b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_a

    goto/16 :goto_0

    :catch_a
    move-exception v0

    :try_start_1c
    const-string v1, "APSServiceCore"

    const-string v2, "invoke part4"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_1

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    :try_start_1d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_b

    :goto_8
    :try_start_1e
    throw v0

    :catch_b
    move-exception v1

    const-string v2, "APSServiceCore"

    const-string v3, "invoke part4"

    invoke-static {v1, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_1

    goto :goto_8

    :catch_c
    move-exception v0

    :try_start_1f
    const-string v1, "APSServiceCore"

    const-string v3, "invoke part3"

    invoke-static {v0, v1, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    :try_start_20
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_d

    goto/16 :goto_0

    :catch_d
    move-exception v0

    :try_start_21
    const-string v1, "APSServiceCore"

    const-string v2, "invoke part4"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_1

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    :try_start_22
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_e

    :goto_9
    :try_start_23
    throw v0

    :catch_e
    move-exception v1

    const-string v2, "APSServiceCore"

    const-string v3, "invoke part4"

    invoke-static {v1, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_1

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v2, v3

    goto/16 :goto_5

    :catch_f
    move-exception v0

    move-object v2, v3

    goto/16 :goto_4

    :catch_10
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_4
.end method

.method static synthetic a(Lcom/loc/as;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 2000
    :try_start_0
    iget-object v0, p0, Lcom/loc/as;->J:Lcom/loc/bz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/as;->J:Lcom/loc/bz;

    invoke-virtual {v0, p1}, Lcom/loc/bz;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "setExtra"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/as;ZLandroid/content/Context;)V
    .locals 1

    .prologue
    .line 5000
    :try_start_0
    iget-object v0, p0, Lcom/loc/as;->J:Lcom/loc/bz;

    invoke-virtual {v0, p1, p2}, Lcom/loc/bz;->a(ZLandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .line 0
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/as;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/loc/as;->E:Z

    return p1
.end method

.method static synthetic b(Lcom/loc/as;)I
    .locals 2

    iget v0, p0, Lcom/loc/as;->z:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/loc/as;->z:I

    return v0
.end method

.method private static b(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    invoke-virtual {v0, p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setErrorCode(I)V

    invoke-virtual {v0, p1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setLocationDetail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "newInstanceAMapLoc"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Z
    .locals 2

    iget-object v1, p0, Lcom/loc/as;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/as;->k:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic c(Lcom/loc/as;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/as;->F:Z

    return v0
.end method

.method private d()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/as;->y:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/loc/as;->e()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/loc/as;->K:Z

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/as;->L:Ljava/lang/String;

    const-string v1, "APSServiceCore"

    const-string v2, "init"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/loc/as;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/as;->G:Z

    return v0
.end method

.method private e()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/loc/as;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/cr;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/loc/as;->r:Lorg/json/JSONObject;

    const-string v1, "User-Agent"

    const-string v2, "AMAP_Location_SDK_Android 2.8.0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/as;->r:Lorg/json/JSONObject;

    const-string v1, "netloc"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/as;->r:Lorg/json/JSONObject;

    const-string v1, "gpsstatus"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/as;->r:Lorg/json/JSONObject;

    const-string v1, "nbssid"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/as;->r:Lorg/json/JSONObject;

    const-string v1, "reversegeo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/as;->r:Lorg/json/JSONObject;

    const-string v1, "reversegeo"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/loc/as;->r:Lorg/json/JSONObject;

    const-string v1, "isOffset"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loc/as;->r:Lorg/json/JSONObject;

    const-string v1, "isOffset"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_1
    iget-object v0, p0, Lcom/loc/as;->r:Lorg/json/JSONObject;

    const-string v1, "wait1stwifi"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/as;->r:Lorg/json/JSONObject;

    const-string v1, "autoup"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/as;->r:Lorg/json/JSONObject;

    const-string v1, "upcolmobile"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/as;->r:Lorg/json/JSONObject;

    const-string v1, "enablegetreq"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/loc/as;->r:Lorg/json/JSONObject;

    const-string v1, "enablegetreq"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    iget-object v0, p0, Lcom/loc/as;->r:Lorg/json/JSONObject;

    const-string v1, "wifiactivescan"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/loc/as;->r:Lorg/json/JSONObject;

    const-string v1, "wifiactivescan"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    iget-object v0, p0, Lcom/loc/as;->r:Lorg/json/JSONObject;

    const-string v1, "isLocationCacheEnable"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/loc/as;->r:Lorg/json/JSONObject;

    const-string v1, "isLocationCacheEnable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_0
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/loc/as;->y:Z

    iget-object v0, p0, Lcom/loc/as;->J:Lcom/loc/bz;

    iget-object v1, p0, Lcom/loc/as;->r:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/loc/bz;->a(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/loc/as;->J:Lcom/loc/bz;

    iget-object v1, p0, Lcom/loc/as;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loc/bz;->c(Landroid/content/Context;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/as;->L:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/loc/as;->K:Z

    const-string v1, "APSServiceCore"

    const-string v2, "doInit part2"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/as;->L:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/loc/as;->K:Z

    const-string v1, "APSServiceCore"

    const-string v2, "doInit part3"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic e(Lcom/loc/as;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/as;->d()V

    return-void
.end method

.method static synthetic f(Lcom/loc/as;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/as;->K:Z

    return v0
.end method

.method static synthetic g(Lcom/loc/as;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/as;->K:Z

    return v0
.end method

.method static synthetic h(Lcom/loc/as;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 0
    .line 3000
    iget-object v0, p0, Lcom/loc/as;->J:Lcom/loc/bz;

    invoke-virtual {v0}, Lcom/loc/bz;->a()Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method static synthetic i(Lcom/loc/as;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/as;->C:Z

    return v0
.end method

.method static synthetic j(Lcom/loc/as;)Lcom/loc/bz;
    .locals 1

    iget-object v0, p0, Lcom/loc/as;->J:Lcom/loc/bz;

    return-object v0
.end method

.method static synthetic k(Lcom/loc/as;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/as;->L:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/loc/as;)Z
    .locals 1

    invoke-direct {p0}, Lcom/loc/as;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic m(Lcom/loc/as;)V
    .locals 3

    .prologue
    .line 4000
    :try_start_0
    iget-object v0, p0, Lcom/loc/as;->J:Lcom/loc/bz;

    iget-object v1, p0, Lcom/loc/as;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loc/bz;->d(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "initAuth"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic n(Lcom/loc/as;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 7000
    :try_start_0
    invoke-direct {p0}, Lcom/loc/as;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v0, p0, Lcom/loc/as;->D:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/as;->I:J

    iput-boolean v3, p0, Lcom/loc/as;->D:Z

    iget-object v0, p0, Lcom/loc/as;->J:Lcom/loc/bz;

    invoke-virtual {v0}, Lcom/loc/bz;->b()V

    :cond_0
    iget-boolean v0, p0, Lcom/loc/as;->E:Z

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/loc/as;->E:Z

    iget-object v0, p0, Lcom/loc/as;->J:Lcom/loc/bz;

    invoke-virtual {v0}, Lcom/loc/bz;->b()V

    :cond_1
    iget-boolean v0, p0, Lcom/loc/as;->F:Z

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/loc/as;->F:Z

    iget-object v0, p0, Lcom/loc/as;->J:Lcom/loc/bz;

    invoke-virtual {v0}, Lcom/loc/bz;->b()V

    :cond_2
    iget-boolean v0, p0, Lcom/loc/as;->G:Z

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/loc/as;->H:J

    invoke-static {v0, v1}, Lcom/loc/de;->b(J)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/loc/dn;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/as;->H:J

    iput-boolean v3, p0, Lcom/loc/as;->G:Z

    iget-object v0, p0, Lcom/loc/as;->J:Lcom/loc/bz;

    invoke-virtual {v0}, Lcom/loc/bz;->b()V

    .line 0
    :cond_3
    return-void

    .line 7000
    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "doFusionLocaiton:init"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic o(Lcom/loc/as;)V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 8000
    :try_start_0
    iget-object v0, p0, Lcom/loc/as;->J:Lcom/loc/bz;

    if-eqz v0, :cond_1

    iget-object v8, p0, Lcom/loc/as;->J:Lcom/loc/bz;

    .line 9000
    invoke-static {}, Lcom/loc/de;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/loc/bz;->a:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 10000
    :try_start_1
    iget-object v1, v8, Lcom/loc/bz;->c:Ljava/lang/Object;

    if-nez v1, :cond_0

    const-string v1, "Collection"

    const-string v2, "1.0.0"

    invoke-static {v1, v2}, Lcom/loc/cr;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/loc/eo;

    move-result-object v1

    iget-object v2, v8, Lcom/loc/bz;->j:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v5, v9

    invoke-static/range {v0 .. v5}, Lcom/loc/ae;->a(Landroid/content/Context;Lcom/loc/eo;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v8, Lcom/loc/bz;->c:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 9000
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v0, v8, Lcom/loc/bz;->o:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/loc/de;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v8}, Lcom/loc/bz;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11000
    invoke-virtual {v8}, Lcom/loc/bz;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/loc/de;->u()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v8}, Lcom/loc/bz;->g()V

    :cond_1
    :goto_1
    return-void

    .line 10000
    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "initCollection"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 8000
    :catch_1
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "startColl"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 11000
    :cond_2
    :try_start_3
    iget-object v0, v8, Lcom/loc/bz;->b:Lorg/json/JSONObject;

    const-string v1, "coll"

    invoke-static {v0, v1}, Lcom/loc/dn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    if-eqz v0, :cond_3

    :try_start_4
    iget-object v0, v8, Lcom/loc/bz;->b:Lorg/json/JSONObject;

    const-string v1, "coll"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    move-result v0

    if-eqz v0, :cond_5

    move v0, v6

    :goto_2
    move v7, v0

    :cond_3
    :goto_3
    if-nez v7, :cond_4

    :try_start_5
    invoke-virtual {v8}, Lcom/loc/bz;->g()V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "APS"

    const-string v2, "start3rdCM"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v8}, Lcom/loc/bz;->e()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    move-result v0

    if-nez v0, :cond_1

    :try_start_6
    invoke-virtual {v8}, Lcom/loc/bz;->f()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    :try_start_7
    iget-object v0, v8, Lcom/loc/bz;->c:Ljava/lang/Object;

    const-string v1, "start"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/loc/dh;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    :try_start_8
    const-string v1, "APS"

    const-string v2, "start3rdCM"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    :cond_5
    move v0, v7

    goto :goto_2
.end method

.method static synthetic p(Lcom/loc/as;)V
    .locals 3

    .prologue
    .line 12000
    :try_start_0
    invoke-virtual {p0}, Lcom/loc/as;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/as;->y:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/as;->A:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/as;->B:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/as;->z:I

    iget-object v0, p0, Lcom/loc/as;->J:Lcom/loc/bz;

    invoke-virtual {v0}, Lcom/loc/bz;->c()V

    iget-object v0, p0, Lcom/loc/as;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    invoke-static {}, Lcom/loc/ey;->a()V

    iget-boolean v0, p0, Lcom/loc/as;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_0
    iget-object v0, p0, Lcom/loc/as;->f:Lcom/loc/au;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/as;->f:Lcom/loc/au;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/loc/au;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "threadDestroy"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic q(Lcom/loc/as;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/as;->y:Z

    return v0
.end method

.method static synthetic r(Lcom/loc/as;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/as;->e()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/as;->w:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/av;

    invoke-direct {v0, p0}, Lcom/loc/av;-><init>(Lcom/loc/as;)V

    iput-object v0, p0, Lcom/loc/as;->x:Lcom/loc/av;

    iget-object v0, p0, Lcom/loc/as;->x:Lcom/loc/av;

    invoke-virtual {v0}, Lcom/loc/av;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/as;->w:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "APSServiceCore"

    const-string v2, "startSocket"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/as;->t:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/as;->t:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    :cond_0
    iget-object v0, p0, Lcom/loc/as;->v:Ljava/net/Socket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/as;->v:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/loc/as;->t:Ljava/net/ServerSocket;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/as;->x:Lcom/loc/av;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/as;->w:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/as;->u:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "APSServiceCore"

    const-string v2, "stopScocket"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 6

    .prologue
    .line 0
    const-string v0, "apiKey"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/loc/dy;->a(Ljava/lang/String;)V

    :cond_0
    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sha1AndPackage"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    const-string v3, "as"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/loc/as;->j:Z

    iget-boolean v2, p0, Lcom/loc/as;->j:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/loc/as;->f:Lcom/loc/au;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/loc/as;->f:Lcom/loc/au;

    const/16 v3, 0x9

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Lcom/loc/au;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    invoke-static {v0}, Lcom/loc/dx;->a(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/loc/dx;->b(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Messenger;

    .line 1000
    iget-object v1, p0, Lcom/loc/as;->f:Lcom/loc/au;

    .line 0
    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/loc/as;->e:Landroid/os/Messenger;

    iget-object v0, p0, Lcom/loc/as;->e:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/loc/bz;

    invoke-direct {v0}, Lcom/loc/bz;-><init>()V

    iput-object v0, p0, Lcom/loc/as;->J:Lcom/loc/bz;

    iget-object v0, p0, Lcom/loc/as;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/as;->d:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/as;->k:Z

    new-instance v0, Lcom/loc/at;

    invoke-direct {v0, p0}, Lcom/loc/at;-><init>(Lcom/loc/as;)V

    iput-object v0, p0, Lcom/loc/as;->g:Lcom/loc/at;

    iget-object v0, p0, Lcom/loc/as;->g:Lcom/loc/at;

    const-string v1, "serviceThread"

    invoke-virtual {v0, v1}, Lcom/loc/at;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/as;->g:Lcom/loc/at;

    invoke-virtual {v0}, Lcom/loc/at;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "onCreate"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/loc/as;->m:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/loc/as;->k:Z

    iget-object v0, p0, Lcom/loc/as;->m:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
