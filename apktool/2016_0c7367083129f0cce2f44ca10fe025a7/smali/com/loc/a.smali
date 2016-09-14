.class public Lcom/loc/a;
.super Ljava/lang/Object;
.source "AMapLocationManager.java"

# interfaces
.implements Lcom/amap/api/location/LocationManagerBase;


# static fields
.field public static r:Z


# instance fields
.field A:Z

.field private B:I

.field private C:Z

.field private D:Landroid/content/Context;

.field private E:Z

.field private F:Z

.field private G:Lorg/json/JSONArray;

.field private H:I

.field private I:Landroid/content/ServiceConnection;

.field private J:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/loc/g;",
            ">;"
        }
    .end annotation
.end field

.field private K:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/loc/g;",
            ">;"
        }
    .end annotation
.end field

.field private L:I

.field private M:Lcom/amap/api/location/AMapLocation;

.field private N:Lorg/json/JSONObject;

.field a:Lcom/amap/api/location/AMapLocationClientOption;

.field public b:Lcom/loc/j;

.field c:Lcom/loc/dq;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/location/AMapLocationListener;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/loc/dp;

.field f:Z

.field public g:Z

.field h:Lcom/loc/ds;

.field i:Landroid/os/Messenger;

.field j:Landroid/os/Messenger;

.field k:Landroid/content/Intent;

.field l:I

.field m:Z

.field n:J

.field o:Lcom/amap/api/location/AMapLocation;

.field p:J

.field q:J

.field s:Ljava/util/concurrent/ScheduledExecutorService;

.field t:Lcom/loc/k;

.field u:Lcom/loc/i;

.field v:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field w:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field x:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field y:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/a;->r:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/loc/a;->B:I

    iput-boolean v2, p0, Lcom/loc/a;->C:Z

    iput-object v1, p0, Lcom/loc/a;->c:Lcom/loc/dq;

    iput-boolean v2, p0, Lcom/loc/a;->E:Z

    iput-boolean v3, p0, Lcom/loc/a;->F:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/loc/a;->f:Z

    iput-boolean v3, p0, Lcom/loc/a;->g:Z

    iput-object v1, p0, Lcom/loc/a;->i:Landroid/os/Messenger;

    iput-object v1, p0, Lcom/loc/a;->j:Landroid/os/Messenger;

    iput-object v1, p0, Lcom/loc/a;->k:Landroid/content/Intent;

    iput v2, p0, Lcom/loc/a;->l:I

    iput-boolean v2, p0, Lcom/loc/a;->m:Z

    iput-wide v4, p0, Lcom/loc/a;->n:J

    iput-object v1, p0, Lcom/loc/a;->o:Lcom/amap/api/location/AMapLocation;

    iput-wide v4, p0, Lcom/loc/a;->p:J

    iput-wide v4, p0, Lcom/loc/a;->q:J

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/a;->s:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v1, p0, Lcom/loc/a;->t:Lcom/loc/k;

    iput-object v1, p0, Lcom/loc/a;->u:Lcom/loc/i;

    iput-object v1, p0, Lcom/loc/a;->v:Ljava/util/concurrent/ScheduledFuture;

    iput-object v1, p0, Lcom/loc/a;->w:Ljava/util/concurrent/ScheduledFuture;

    iput-object v1, p0, Lcom/loc/a;->x:Ljava/util/concurrent/Future;

    iput-object v1, p0, Lcom/loc/a;->G:Lorg/json/JSONArray;

    iput v2, p0, Lcom/loc/a;->H:I

    new-instance v0, Lcom/loc/b;

    invoke-direct {v0, p0}, Lcom/loc/b;-><init>(Lcom/loc/a;)V

    iput-object v0, p0, Lcom/loc/a;->y:Ljava/util/concurrent/Callable;

    new-instance v0, Lcom/loc/c;

    invoke-direct {v0, p0}, Lcom/loc/c;-><init>(Lcom/loc/a;)V

    iput-object v0, p0, Lcom/loc/a;->I:Landroid/content/ServiceConnection;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/loc/a;->J:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/loc/a;->K:Ljava/util/LinkedList;

    iput v2, p0, Lcom/loc/a;->L:I

    iput-object v1, p0, Lcom/loc/a;->M:Lcom/amap/api/location/AMapLocation;

    iput-boolean v2, p0, Lcom/loc/a;->z:Z

    iput-boolean v2, p0, Lcom/loc/a;->A:Z

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/loc/a;->N:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/loc/a;->D:Landroid/content/Context;

    iput-object p2, p0, Lcom/loc/a;->k:Landroid/content/Intent;

    invoke-static {}, Lcom/loc/cr;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "loc"

    const-string v1, "2.8.0"

    invoke-static {v0, v1}, Lcom/loc/cr;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/loc/eo;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/a;->D:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/loc/dk;->a(Landroid/content/Context;Lcom/loc/eo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 1000
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/loc/j;

    iget-object v1, p0, Lcom/loc/a;->D:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/loc/j;-><init>(Lcom/loc/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/loc/a;->b:Lcom/loc/j;

    .line 2000
    :goto_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x67

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/a;->k:Landroid/content/Intent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/loc/a;->b:Lcom/loc/j;

    invoke-virtual {v1, v0}, Lcom/loc/j;->sendMessage(Landroid/os/Message;)Z

    .line 3000
    :try_start_1
    iget-object v0, p0, Lcom/loc/a;->v:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/a;->v:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/loc/a;->s:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/loc/a;->y:Ljava/util/concurrent/Callable;

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/a;->v:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1000
    :cond_2
    :goto_2
    new-instance v0, Lcom/loc/ds;

    iget-object v1, p0, Lcom/loc/a;->D:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/loc/ds;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loc/a;->h:Lcom/loc/ds;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/loc/a;->b:Lcom/loc/j;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/loc/a;->j:Landroid/os/Messenger;

    new-instance v0, Lcom/loc/dq;

    iget-object v1, p0, Lcom/loc/a;->D:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/a;->b:Lcom/loc/j;

    invoke-direct {v0, v1, v2}, Lcom/loc/dq;-><init>(Landroid/content/Context;Lcom/loc/j;)V

    iput-object v0, p0, Lcom/loc/a;->c:Lcom/loc/dq;

    :try_start_2
    new-instance v0, Lcom/loc/dp;

    iget-object v1, p0, Lcom/loc/a;->D:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/loc/dp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loc/a;->e:Lcom/loc/dp;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 0
    :goto_3
    new-instance v0, Lcom/loc/k;

    invoke-direct {v0, p0}, Lcom/loc/k;-><init>(Lcom/loc/a;)V

    iput-object v0, p0, Lcom/loc/a;->t:Lcom/loc/k;

    new-instance v0, Lcom/loc/i;

    invoke-direct {v0, p0}, Lcom/loc/i;-><init>(Lcom/loc/a;)V

    iput-object v0, p0, Lcom/loc/a;->u:Lcom/loc/i;

    return-void

    .line 1000
    :cond_3
    new-instance v0, Lcom/loc/j;

    invoke-direct {v0, p0}, Lcom/loc/j;-><init>(Lcom/loc/a;)V

    iput-object v0, p0, Lcom/loc/a;->b:Lcom/loc/j;

    goto :goto_1

    .line 3000
    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "doGetServiceMessengerFuture"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1000
    :catch_1
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "init"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method

.method private static a(Lcom/amap/api/location/AMapLocation;I)Lcom/loc/g;
    .locals 1

    new-instance v0, Lcom/loc/g;

    invoke-direct {v0, p0, p1}, Lcom/loc/g;-><init>(Lcom/amap/api/location/AMapLocation;I)V

    return-object v0
.end method

.method private a(J)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/loc/a;->w:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/a;->w:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/loc/a;->s:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/loc/a;->t:Lcom/loc/k;

    iget-object v2, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v2, p1

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/a;->w:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "startNetLocationTask"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/amap/api/location/AMapLocation;)V
    .locals 2

    :try_start_0
    const-string v0, "gps"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/loc/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/AMapLocationListener;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v0, p1}, Lcom/amap/api/location/AMapLocationListener;->onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/loc/a;I)V
    .locals 6

    .prologue
    .line 10000
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "wifiactivescan"

    iget-object v3, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isWifiActiveScan()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "isNeedAddress"

    iget-object v3, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "isKillProcess"

    iget-object v3, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isKillProcess()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "isOffset"

    iget-object v3, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "httptimeout"

    iget-object v3, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->getHttpTimeOut()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "isLocationCacheEnable"

    iget-object v3, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/loc/a;->j:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Lcom/loc/a;->i:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/loc/a;->i:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "sendLocMessage"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/a;Landroid/app/PendingIntent;)V
    .locals 2

    .prologue
    .line 29000
    if-nez p1, :cond_1

    .line 30000
    :cond_0
    :goto_0
    return-void

    .line 29000
    :cond_1
    iget-object v0, p0, Lcom/loc/a;->e:Lcom/loc/dp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/a;->e:Lcom/loc/dp;

    .line 30000
    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/loc/dp;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/loc/dp;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/a;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 19000
    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/loc/a;->D:Landroid/content/Context;

    const-class v1, Lcom/amap/api/location/APSService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_0
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption;->getAPIKEY()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption;->getAPIKEY()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_0
    :try_start_2
    const-string v1, "apiKey"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/loc/a;->D:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/dx;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "packageName"

    iget-object v2, p0, Lcom/loc/a;->D:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sha1AndPackage"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/loc/a;->D:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/a;->I:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    return-void

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/loc/a;->D:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/dx;->f(Landroid/content/Context;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v2, "AMapLocationManager"

    const-string v3, "startServiceImpl p2"

    invoke-static {v0, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "startServiceImpl"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/loc/a;Lcom/amap/api/fence/Fence;)V
    .locals 8

    .prologue
    .line 25000
    if-nez p1, :cond_1

    .line 26000
    :cond_0
    :goto_0
    return-void

    .line 25000
    :cond_1
    iget-object v0, p0, Lcom/loc/a;->e:Lcom/loc/dp;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/loc/a;->e:Lcom/loc/dp;

    iget-object v4, p1, Lcom/amap/api/fence/Fence;->a:Landroid/app/PendingIntent;

    .line 26000
    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Lcom/amap/api/fence/Fence;->e:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/amap/api/fence/Fence;->e:F

    const/high16 v1, 0x447a0000    # 1000.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 27000
    iget-object v0, v3, Lcom/loc/dp;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    .line 26000
    if-nez v0, :cond_2

    iget-object v0, v3, Lcom/loc/dp;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/amap/api/fence/Fence;->a()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/fence/Fence;->a()I

    move-result v0

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    iget-object v1, v3, Lcom/loc/dp;->b:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_3
    const/16 v0, 0x14

    if-gt v1, v0, :cond_0

    const/4 v0, -0x1

    iput v0, p1, Lcom/amap/api/fence/Fence;->f:I

    .line 28000
    iget-object v0, v3, Lcom/loc/dp;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    .line 26000
    if-nez v0, :cond_6

    iget-object v0, v3, Lcom/loc/dp;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/fence/Fence;

    iget-object v6, v1, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    iget-object v7, p1, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :goto_3
    move-object v2, v1

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v3, Lcom/loc/dp;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v3, Lcom/loc/dp;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    move-object v1, v2

    goto :goto_3
.end method

.method static synthetic a(Lcom/loc/a;Lcom/amap/api/location/AMapLocation;)V
    .locals 12

    .prologue
    .line 11000
    :try_start_0
    iget-object v0, p0, Lcom/loc/a;->e:Lcom/loc/dp;

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/loc/a;->e:Lcom/loc/dp;

    .line 13000
    iget-object v0, v4, Lcom/loc/dp;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    .line 12000
    if-nez v0, :cond_3

    iget-object v0, v4, Lcom/loc/dp;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/fence/Fence;

    invoke-static {v1}, Lcom/loc/dp;->a(Lcom/amap/api/fence/Fence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x4

    new-array v2, v2, [D

    const/4 v3, 0x0

    iget-wide v8, v1, Lcom/amap/api/fence/Fence;->d:D

    aput-wide v8, v2, v3

    const/4 v3, 0x1

    iget-wide v8, v1, Lcom/amap/api/fence/Fence;->c:D

    aput-wide v8, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v8

    aput-wide v8, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v8

    aput-wide v8, v2, v3

    invoke-static {v2}, Lcom/loc/dn;->a([D)F

    move-result v2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v3

    const/high16 v7, 0x43fa0000    # 500.0f

    cmpl-float v7, v3, v7

    if-ltz v7, :cond_d

    iget v3, v1, Lcom/amap/api/fence/Fence;->e:F

    const/high16 v7, 0x43fa0000    # 500.0f

    add-float/2addr v3, v7

    sub-float/2addr v2, v3

    move v3, v2

    :goto_1
    const/4 v2, 0x0

    const/4 v7, 0x0

    cmpl-float v3, v3, v7

    if-lez v3, :cond_e

    iget v3, v1, Lcom/amap/api/fence/Fence;->f:I

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    const/4 v3, 0x0

    iput v3, v1, Lcom/amap/api/fence/Fence;->f:I

    :goto_2
    if-eqz v2, :cond_10

    iget v2, v1, Lcom/amap/api/fence/Fence;->f:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/amap/api/fence/Fence;->g:J

    invoke-virtual {v1}, Lcom/amap/api/fence/Fence;->a()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    const/4 v3, 0x2

    invoke-virtual {v4, v2, v1, v3}, Lcom/loc/dp;->a(Landroid/app/PendingIntent;Lcom/amap/api/fence/Fence;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11000
    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "AMapLocationManager"

    const-string v2, "handlerLocation part1"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    :cond_3
    :try_start_2
    iget-boolean v0, p0, Lcom/loc/a;->F:Z

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v2

    .line 14000
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move-result v0

    if-nez v0, :cond_9

    :try_start_3
    iget-object v1, p0, Lcom/loc/a;->o:Lcom/amap/api/location/AMapLocation;

    .line 15000
    iput-object p1, p0, Lcom/loc/a;->M:Lcom/amap/api/location/AMapLocation;

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v4

    const/4 v0, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    iget v6, p0, Lcom/loc/a;->B:I

    const/4 v7, 0x3

    if-le v6, v7, :cond_4

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v6

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_4

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v6

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_11

    :cond_4
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setAccuracy(F)V

    :cond_5
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setSpeed(F)V

    :cond_6
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/a;->q:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/a;->L:I

    move-object v0, p1

    .line 16000
    :goto_3
    iget v1, p0, Lcom/loc/a;->L:I

    invoke-static {v0, v1}, Lcom/loc/a;->a(Lcom/amap/api/location/AMapLocation;I)Lcom/loc/g;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/a;->M:Lcom/amap/api/location/AMapLocation;

    iget v4, p0, Lcom/loc/a;->L:I

    invoke-static {v1, v4}, Lcom/loc/a;->a(Lcom/amap/api/location/AMapLocation;I)Lcom/loc/g;

    move-result-object v1

    iget-boolean v4, p0, Lcom/loc/a;->C:Z

    if-nez v4, :cond_17

    iget-object v1, p0, Lcom/loc/a;->J:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/loc/a;->J:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v4, 0x5

    if-lt v1, v4, :cond_7

    iget-object v1, p0, Lcom/loc/a;->J:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_7
    iget-object v1, p0, Lcom/loc/a;->J:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/loc/a;->J:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/loc/a;->K:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_9

    iget-object v0, p0, Lcom/loc/a;->J:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/loc/a;->K:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/loc/a;->J:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/g;

    invoke-virtual {v0}, Lcom/loc/g;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "#"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    .line 14000
    :catch_1
    move-exception v0

    :try_start_4
    const-string v1, "AMapLocationManager"

    const-string v4, "handleMessage"

    invoke-static {v0, v1, v4}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 11000
    :cond_9
    :goto_6
    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/a;->p:J

    iput-object p1, p0, Lcom/loc/a;->o:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {p1, v2, v3}, Lcom/amap/api/location/AMapLocation;->setTime(J)V

    invoke-direct {p0, p1}, Lcom/loc/a;->a(Lcom/amap/api/location/AMapLocation;)V

    iget-object v0, p0, Lcom/loc/a;->h:Lcom/loc/ds;

    invoke-virtual {v0, p1}, Lcom/loc/ds;->a(Lcom/amap/api/location/AMapLocation;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 17000
    :try_start_5
    invoke-static {}, Lcom/loc/de;->o()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    move-result v0

    if-nez v0, :cond_1a

    .line 11000
    :cond_a
    :goto_7
    :try_start_6
    iget-object v0, p0, Lcom/loc/a;->D:Landroid/content/Context;

    iget v1, p0, Lcom/loc/a;->H:I

    invoke-static {v0, v1, p1}, Lcom/loc/dj;->a(Landroid/content/Context;ILcom/amap/api/location/AMapLocation;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_b
    :goto_8
    :try_start_7
    iget-object v0, p0, Lcom/loc/a;->D:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/dk;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/loc/cr;->b()Z

    move-result v0

    if-eqz v0, :cond_1c

    if-nez p1, :cond_1c

    iget-object v0, p0, Lcom/loc/a;->D:Landroid/content/Context;

    const-string v1, "loc"

    const-string v2, "amaplocation is null"

    invoke-static {v0, v1, v2}, Lcom/loc/dk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    :cond_c
    :goto_9
    return-void

    .line 12000
    :cond_d
    :try_start_8
    iget v7, v1, Lcom/amap/api/fence/Fence;->e:F

    add-float/2addr v3, v7

    sub-float/2addr v2, v3

    move v3, v2

    goto/16 :goto_1

    :cond_e
    iget v3, v1, Lcom/amap/api/fence/Fence;->f:I

    const/4 v7, 0x1

    if-eq v3, v7, :cond_f

    const/4 v2, 0x1

    :cond_f
    const/4 v3, 0x1

    iput v3, v1, Lcom/amap/api/fence/Fence;->f:I

    goto/16 :goto_2

    :pswitch_1
    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/amap/api/fence/Fence;->g:J

    invoke-virtual {v1}, Lcom/amap/api/fence/Fence;->a()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    const/4 v3, 0x1

    invoke-virtual {v4, v2, v1, v3}, Lcom/loc/dp;->a(Landroid/app/PendingIntent;Lcom/amap/api/fence/Fence;I)V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v1}, Lcom/amap/api/fence/Fence;->a()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    iget-wide v2, v1, Lcom/amap/api/fence/Fence;->g:J

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-lez v2, :cond_1

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v2

    iget-wide v8, v1, Lcom/amap/api/fence/Fence;->g:J

    sub-long/2addr v2, v8

    invoke-virtual {v1}, Lcom/amap/api/fence/Fence;->c()J

    move-result-wide v8

    cmp-long v2, v2, v8

    if-lez v2, :cond_1

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/amap/api/fence/Fence;->g:J

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    const/4 v3, 0x4

    invoke-virtual {v4, v2, v1, v3}, Lcom/loc/dp;->a(Landroid/app/PendingIntent;Lcom/amap/api/fence/Fence;I)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 15000
    :cond_11
    :try_start_9
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_15

    iget-wide v6, p0, Lcom/loc/a;->p:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x1388

    cmp-long v6, v6, v8

    if-gez v6, :cond_14

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v6

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-float v7, v8

    mul-float/2addr v6, v7

    const/high16 v7, 0x44fa0000    # 2000.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v8

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v9

    add-float/2addr v8, v9

    mul-float/2addr v7, v8

    const/4 v8, 0x4

    new-array v8, v8, [D

    const/4 v9, 0x0

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v10

    aput-wide v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v10

    aput-wide v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v10

    aput-wide v10, v8, v9

    const/4 v9, 0x3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v10

    aput-wide v10, v8, v9

    invoke-static {v8}, Lcom/loc/dn;->a([D)F

    move-result v8

    add-float/2addr v6, v7

    const v7, 0x453b8000    # 3000.0f

    add-float/2addr v6, v7

    cmpl-float v6, v8, v6

    if-lez v6, :cond_12

    const/4 v0, 0x1

    :cond_12
    :goto_a
    if-eqz v0, :cond_16

    iget-wide v6, p0, Lcom/loc/a;->q:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_13

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/loc/a;->q:J

    :cond_13
    iget-wide v6, p0, Lcom/loc/a;->q:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7530

    cmp-long v0, v4, v6

    if-gez v0, :cond_16

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/a;->C:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/loc/a;->L:I

    move-object v0, v1

    goto/16 :goto_3

    :cond_14
    const/4 v6, 0x0

    iput v6, p0, Lcom/loc/a;->B:I

    goto :goto_a

    :cond_15
    iget-object v6, p0, Lcom/loc/a;->K:Ljava/util/LinkedList;

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/loc/a;->K:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/loc/a;->J:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->clear()V

    goto :goto_a

    :cond_16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/a;->q:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/a;->L:I

    move-object v0, p1

    goto/16 :goto_3

    .line 16000
    :cond_17
    iget v4, p0, Lcom/loc/a;->L:I

    if-nez v4, :cond_18

    iget-object v1, p0, Lcom/loc/a;->J:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/loc/a;->K:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/loc/a;->K:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_18
    iget-object v0, p0, Lcom/loc/a;->K:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/loc/a;->K:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string v0, "gpsstatistics"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/dj;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/a;->J:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/loc/a;->K:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/a;->C:Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_6

    .line 17000
    :cond_1a
    const/4 v1, 0x0

    :try_start_a
    iget v0, p0, Lcom/loc/a;->H:I

    packed-switch v0, :pswitch_data_1

    :pswitch_2
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/loc/a;->G:Lorg/json/JSONArray;

    if-nez v0, :cond_1b

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/loc/a;->G:Lorg/json/JSONArray;

    :cond_1b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "lon"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "lat"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    invoke-static {}, Lcom/loc/dn;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/loc/a;->G:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/a;->G:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/loc/a;->G:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_a

    invoke-direct {p0}, Lcom/loc/a;->f()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_7

    :catch_2
    move-exception v0

    :try_start_b
    const-string v1, "AMapLocationManager"

    const-string v2, "handlerOfflineLog"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_7

    .line 11000
    :catch_3
    move-exception v0

    :try_start_c
    const-string v1, "AMapLocationManager"

    const-string v2, "handlerLocation part2"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_8

    :catch_4
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "handlerLocation part3"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 17000
    :pswitch_3
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_b

    :pswitch_4
    const/4 v0, 0x1

    const/4 v1, 0x0

    goto :goto_b

    .line 11000
    :cond_1c
    :try_start_d
    iget-object v0, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/loc/a;->stopLocation()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_9

    .line 12000
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 17000
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/loc/a;Lcom/amap/api/location/AMapLocationListener;)V
    .locals 2

    .prologue
    .line 20000
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 0
    :cond_2
    return-void
.end method

.method private a(Lcom/loc/bz;Z)V
    .locals 4

    .prologue
    .line 0
    :try_start_0
    iget-boolean v0, p0, Lcom/loc/a;->A:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_1

    .line 5000
    :try_start_1
    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption;->getAPIKEY()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/loc/dy;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/loc/a;->N:Lorg/json/JSONObject;

    const-string v1, "netloc"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/a;->N:Lorg/json/JSONObject;

    const-string v1, "gpsstatus"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/a;->N:Lorg/json/JSONObject;

    const-string v1, "nbssid"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/a;->N:Lorg/json/JSONObject;

    const-string v1, "wait1stwifi"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/a;->N:Lorg/json/JSONObject;

    const-string v1, "autoup"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/a;->N:Lorg/json/JSONObject;

    const-string v1, "upcolmobile"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/a;->N:Lorg/json/JSONObject;

    const-string v1, "enablegetreq"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/a;->N:Lorg/json/JSONObject;

    const-string v1, "reversegeo"

    iget-object v2, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/a;->N:Lorg/json/JSONObject;

    const-string v1, "isOffset"

    iget-object v2, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/loc/a;->N:Lorg/json/JSONObject;

    const-string v2, "wifiactivescan"

    iget-object v0, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isWifiActiveScan()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/a;->N:Lorg/json/JSONObject;

    const-string v1, "httptimeout"

    iget-object v2, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->getHttpTimeOut()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/a;->N:Lorg/json/JSONObject;

    const-string v1, "isLocationCacheEnable"

    iget-object v2, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/a;->N:Lorg/json/JSONObject;

    const-string v1, "isOnceLocationLatest"

    iget-object v2, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocationLatest()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/loc/a;->A:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 0
    :cond_1
    :goto_2
    if-nez p2, :cond_2

    :try_start_4
    iget-object v0, p0, Lcom/loc/a;->N:Lorg/json/JSONObject;

    const-string v1, "key"

    iget-object v2, p0, Lcom/loc/a;->D:Landroid/content/Context;

    invoke-static {v2}, Lcom/loc/dx;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/a;->N:Lorg/json/JSONObject;

    const-string v1, "User-Agent"

    const-string v2, "AMAP_Location_SDK_Android 2.8.0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_3
    :try_start_5
    iget-object v0, p0, Lcom/loc/a;->N:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lcom/loc/bz;->a(Lorg/json/JSONObject;)V

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/loc/a;->D:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/loc/bz;->a(Landroid/content/Context;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :goto_4
    return-void

    .line 5000
    :cond_3
    :try_start_6
    const-string v0, "0"
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_7
    const-string v1, "AMapLocationManager"

    const-string v2, "initAPSBase "

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_8
    const-string v1, "AMapLocationManager"

    const-string v2, "initAPSBase 2"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .line 0
    :catch_2
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "initAPS part3"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_3
    move-exception v0

    :try_start_9
    const-string v1, "AMapLocationManager"

    const-string v2, "initAPS part2"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/loc/a;->D:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/loc/bz;->b(Landroid/content/Context;)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_4
.end method

.method private a()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/loc/a;->v:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/a;->v:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/a;->v:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/a;->v:Ljava/util/concurrent/ScheduledFuture;

    const-wide/16 v4, 0x1388

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v3}, Ljava/util/concurrent/ScheduledFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lcom/loc/a;->i:Landroid/os/Messenger;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/a;->v:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/a;->v:Ljava/util/concurrent/ScheduledFuture;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/a;->v:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/loc/a;->i:Landroid/os/Messenger;

    if-nez v0, :cond_4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setErrorCode(I)V

    const-string v4, "\u8bf7\u68c0\u67e5\u914d\u7f6e\u6587\u4ef6\u662f\u5426\u914d\u7f6e\u670d\u52a1"

    invoke-virtual {v3, v4}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setLocationDetail(Ljava/lang/String;)V

    const-string v4, "location"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/loc/a;->b:Lcom/loc/j;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/loc/a;->b:Lcom/loc/j;

    invoke-virtual {v2, v0}, Lcom/loc/j;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    move v0, v1

    :goto_1
    return v0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/loc/a;->v:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/loc/a;->v:Ljava/util/concurrent/ScheduledFuture;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/loc/a;->v:Ljava/util/concurrent/ScheduledFuture;

    :cond_3
    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "AMapLocationManager"

    const-string v3, "checkAPSManager"

    invoke-static {v0, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lcom/loc/a;->v:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/a;->v:Ljava/util/concurrent/ScheduledFuture;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/a;->v:Ljava/util/concurrent/ScheduledFuture;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/a;)Z
    .locals 1

    invoke-direct {p0}, Lcom/loc/a;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/loc/a;I)I
    .locals 0

    iput p1, p0, Lcom/loc/a;->H:I

    return p1
.end method

.method private b()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v0

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/loc/a;->d()V

    :cond_0
    iget-object v0, p0, Lcom/loc/a;->x:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/a;->x:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/loc/a;->s:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/loc/a;->u:Lcom/loc/i;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/a;->x:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "deviceSensorsLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/loc/a;)V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6000
    new-instance v4, Lcom/loc/di;

    invoke-direct {v4}, Lcom/loc/di;-><init>()V

    const/4 v0, 0x0

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v6

    .line 7000
    iput-wide v6, v4, Lcom/loc/di;->a:J

    .line 6000
    new-instance v5, Lcom/loc/bz;

    invoke-direct {v5}, Lcom/loc/bz;-><init>()V

    iget-object v1, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v5, v3}, Lcom/loc/a;->a(Lcom/loc/bz;Z)V

    :try_start_0
    invoke-virtual {v5}, Lcom/loc/bz;->h()Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/loc/dn;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_1
    invoke-direct {p0, v5, v2}, Lcom/loc/a;->a(Lcom/loc/bz;Z)V

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v5, v1}, Lcom/loc/bz;->a(Z)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move v1, v3

    :goto_1
    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v6

    .line 8000
    iput-wide v6, v4, Lcom/loc/di;->b:J

    .line 9000
    iput-object v0, v4, Lcom/loc/di;->c:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 6000
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "location"

    invoke-virtual {v7, v8, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v0, :cond_5

    const-string v2, "originalLocType"

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getLocationType()I

    move-result v8

    invoke-virtual {v7, v2, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_2
    invoke-virtual {v6, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput v3, v6, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/loc/a;->b:Lcom/loc/j;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/loc/a;->b:Lcom/loc/j;

    invoke-virtual {v2, v6}, Lcom/loc/j;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/loc/a;->D:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/loc/dj;->a(Landroid/content/Context;Lcom/loc/di;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :try_start_3
    invoke-direct {p0, v5, v1}, Lcom/loc/a;->a(Lcom/loc/bz;Z)V

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lcom/loc/bz;->a(Z)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    :goto_4
    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getErrorCode()I

    move-result v1

    if-nez v1, :cond_3

    :try_start_4
    invoke-virtual {v5, v0}, Lcom/loc/bz;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_5
    invoke-virtual {v5}, Lcom/loc/bz;->c()V

    .line 0
    return-void

    .line 6000
    :catch_0
    move-exception v1

    const-string v6, "AMapLocationManager"

    const-string v7, "doAPSLocation:doFirstCacheLocate"

    invoke-static {v1, v6, v7}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v6, "AMapLocationManager"

    const-string v7, "doAPSLocation:doFirstNetLocate"

    invoke-static {v1, v6, v7}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    const-string v8, "originalLocType"

    invoke-virtual {v7, v8, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :catch_2
    move-exception v1

    const-string v2, "AMapLocationManager"

    const-string v3, "doAPSLocation:doFirstNetLocate 2"

    invoke-static {v1, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_3
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "doAPSLocation:doFirstAddCache"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_4
    move-exception v2

    goto :goto_3
.end method

.method static synthetic b(Lcom/loc/a;Lcom/amap/api/fence/Fence;)V
    .locals 4

    .prologue
    .line 31000
    if-nez p1, :cond_1

    .line 32000
    :cond_0
    :goto_0
    return-void

    .line 31000
    :cond_1
    iget-object v0, p0, Lcom/loc/a;->e:Lcom/loc/dp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/a;->e:Lcom/loc/dp;

    iget-object v1, p1, Lcom/amap/api/fence/Fence;->a:Landroid/app/PendingIntent;

    iget-object v2, p1, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    .line 32000
    if-eqz v1, :cond_0

    iget-object v3, v0, Lcom/loc/dp;->b:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1, v3}, Lcom/loc/dp;->a(Landroid/app/PendingIntent;Ljava/util/List;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/loc/a;Lcom/amap/api/location/AMapLocationListener;)V
    .locals 1

    .prologue
    .line 0
    .line 21000
    iget-object v0, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/loc/a;->stopLocation()V

    .line 0
    :cond_1
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/loc/a;->x:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/a;->x:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/a;->x:Ljava/util/concurrent/Future;

    :cond_0
    iget-object v0, p0, Lcom/loc/a;->c:Lcom/loc/dq;

    .line 4000
    iget-object v1, v0, Lcom/loc/dq;->c:Landroid/location/LocationManager;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/loc/dq;->k:Landroid/location/LocationListener;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/loc/dq;->c:Landroid/location/LocationManager;

    iget-object v2, v0, Lcom/loc/dq;->k:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_1
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/loc/dq;->h:J

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/loc/dq;->i:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 0
    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "stopGPSLocationTask"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/loc/a;)Z
    .locals 1

    invoke-direct {p0}, Lcom/loc/a;->a()Z

    move-result v0

    return v0
.end method

.method private d()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/a;->w:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/a;->w:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/a;->w:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "stopNetLocationTask"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/loc/a;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/a;->E:Z

    return v0
.end method

.method static synthetic e(Lcom/loc/a;)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/a;->B:I

    return v0
.end method

.method private e()Z
    .locals 4

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/loc/a;->n:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/loc/a;)I
    .locals 2

    iget v0, p0, Lcom/loc/a;->B:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/loc/a;->B:I

    return v0
.end method

.method private declared-synchronized f()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/loc/de;->o()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/loc/a;->G:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/a;->G:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "detail"

    iget-object v2, p0, Lcom/loc/a;->G:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "loc"

    const-string v2, "2.8.0"

    invoke-static {v1, v2}, Lcom/loc/cr;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/loc/eo;

    move-result-object v1

    new-instance v2, Lcom/loc/bs;

    iget-object v3, p0, Lcom/loc/a;->D:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v1, v0}, Lcom/loc/bs;-><init>(Landroid/content/Context;Lcom/loc/eo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/a;->D:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/loc/bt;->a(Lcom/loc/bs;Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/a;->G:Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "AMapLocationManager"

    const-string v2, "writeOfflineLog"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private g()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.autonavi.minimap"

    invoke-static {}, Lcom/loc/de;->l()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/loc/de;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/loc/a;->D:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "callAMap part1"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {}, Lcom/loc/de;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/loc/a;->D:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "callAMap part2"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/loc/a;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 18000
    :try_start_0
    iget-object v2, p0, Lcom/loc/a;->D:Landroid/content/Context;

    const-string v3, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    move v1, v0

    :goto_0
    if-eqz v1, :cond_4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/loc/a;->D:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/loc/de;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, ""

    invoke-static {}, Lcom/loc/de;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/loc/de;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/loc/de;->h()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/loc/d;

    invoke-direct {v3, p0}, Lcom/loc/d;-><init>(Lcom/loc/a;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    invoke-static {}, Lcom/loc/de;->i()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/loc/e;

    invoke-direct {v3, p0}, Lcom/loc/e;-><init>(Lcom/loc/a;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x7d3

    invoke-virtual {v0, v2}, Landroid/view/Window;->setType(I)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/loc/a;->D:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_3

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/loc/a;->g()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/loc/a;->g()V

    const-string v1, "AMapLocationManager"

    const-string v2, "showDialog"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private h()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/loc/a;->c()V

    invoke-direct {p0}, Lcom/loc/a;->d()V

    iget-object v0, p0, Lcom/loc/a;->J:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/loc/a;->K:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    invoke-direct {p0}, Lcom/loc/a;->f()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/a;->m:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/a;->F:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/a;->n:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/a;->l:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/a;->o:Lcom/amap/api/location/AMapLocation;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/a;->p:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/a;->C:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/a;->L:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/a;->B:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/a;->M:Lcom/amap/api/location/AMapLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "stopLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/loc/a;)V
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 22000
    iget-object v2, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez v2, :cond_0

    new-instance v2, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v2}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v2, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/loc/a;->F:Z

    sget-object v2, Lcom/loc/f;->a:[I

    iget-object v3, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 24000
    :goto_0
    return-void

    .line 23000
    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/loc/a;->c()V

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/loc/a;->a(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "batterySavingLocaiton"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 22000
    :pswitch_1
    invoke-direct {p0}, Lcom/loc/a;->b()V

    goto :goto_0

    .line 24000
    :pswitch_2
    :try_start_1
    invoke-direct {p0}, Lcom/loc/a;->b()V

    iget-object v2, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isGpsFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x7530

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/loc/a;->a(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "hightAccuracyLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 22000
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic i(Lcom/loc/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/a;->h()V

    return-void
.end method

.method static synthetic j(Lcom/loc/a;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 0
    .line 33000
    iput-boolean v3, p0, Lcom/loc/a;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/a;->E:Z

    invoke-direct {p0}, Lcom/loc/a;->h()V

    iget-object v0, p0, Lcom/loc/a;->h:Lcom/loc/ds;

    invoke-virtual {v0}, Lcom/loc/ds;->b()V

    iput-object v2, p0, Lcom/loc/a;->h:Lcom/loc/ds;

    iget-object v0, p0, Lcom/loc/a;->e:Lcom/loc/dp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/a;->e:Lcom/loc/dp;

    .line 34000
    iget-object v0, v0, Lcom/loc/dp;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 33000
    :cond_0
    iget-object v0, p0, Lcom/loc/a;->I:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/a;->D:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/a;->I:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    iget-object v0, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v2, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, p0, Lcom/loc/a;->v:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/a;->v:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iput-object v2, p0, Lcom/loc/a;->v:Ljava/util/concurrent/ScheduledFuture;

    :cond_3
    iget-object v0, p0, Lcom/loc/a;->s:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    iput-object v2, p0, Lcom/loc/a;->I:Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/loc/a;->b:Lcom/loc/j;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/a;->b:Lcom/loc/j;

    invoke-virtual {v0, v2}, Lcom/loc/j;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 0
    :cond_4
    return-void
.end method

.method static synthetic k(Lcom/loc/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/a;->g()V

    return-void
.end method


# virtual methods
.method public addGeoFenceAlert(Ljava/lang/String;DDFJLandroid/app/PendingIntent;)V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lcom/amap/api/fence/Fence;

    invoke-direct {v1}, Lcom/amap/api/fence/Fence;-><init>()V

    iput-object p1, v1, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    iput-wide p2, v1, Lcom/amap/api/fence/Fence;->d:D

    iput-wide p4, v1, Lcom/amap/api/fence/Fence;->c:D

    iput p6, v1, Lcom/amap/api/fence/Fence;->e:F

    iput-object p9, v1, Lcom/amap/api/fence/Fence;->a:Landroid/app/PendingIntent;

    invoke-virtual {v1, p7, p8}, Lcom/amap/api/fence/Fence;->a(J)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0x3ee

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/a;->b:Lcom/loc/j;

    invoke-virtual {v1, v0}, Lcom/loc/j;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "addGeoFenceAlert"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLastKnownLocation()Lcom/amap/api/location/AMapLocation;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/loc/a;->h:Lcom/loc/ds;

    invoke-virtual {v1}, Lcom/loc/ds;->a()Lcom/amap/api/location/AMapLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "AMapLocationManager"

    const-string v3, "getLastKnownLocation"

    invoke-static {v1, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/a;->E:Z

    return v0
.end method

.method public onDestroy()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3f3

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/a;->b:Lcom/loc/j;

    invoke-virtual {v1, v0}, Lcom/loc/j;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeGeoFenceAlert(Landroid/app/PendingIntent;)V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0x3ef

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/a;->b:Lcom/loc/j;

    invoke-virtual {v1, v0}, Lcom/loc/j;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "removeGeoFenceAlert 2"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeGeoFenceAlert(Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lcom/amap/api/fence/Fence;

    invoke-direct {v1}, Lcom/amap/api/fence/Fence;-><init>()V

    iput-object p2, v1, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    iput-object p1, v1, Lcom/amap/api/fence/Fence;->a:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0x3f2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/a;->b:Lcom/loc/j;

    invoke-virtual {v1, v0}, Lcom/loc/j;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "removeGeoFenceAlert 1"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 3

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "setLocationListener"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3ea

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/loc/a;->b:Lcom/loc/j;

    invoke-virtual {v1, v0}, Lcom/loc/j;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/a;->F:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->clone()Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {p0}, Lcom/loc/a;->d()V

    invoke-direct {p0}, Lcom/loc/a;->c()V

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/loc/a;->a(J)V

    iget-object v0, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v0

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Battery_Saving:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/loc/a;->b()V

    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->clone()Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "setLocationOption"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startAssistantLocation()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3f0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/a;->b:Lcom/loc/j;

    invoke-virtual {v1, v0}, Lcom/loc/j;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "startAssistantLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startLocation()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3eb

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/a;->b:Lcom/loc/j;

    invoke-virtual {v1, v0}, Lcom/loc/j;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "startLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopAssistantLocation()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3f1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/a;->b:Lcom/loc/j;

    invoke-virtual {v1, v0}, Lcom/loc/j;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "stopAssistantLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopLocation()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3ec

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/a;->b:Lcom/loc/j;

    invoke-virtual {v1, v0}, Lcom/loc/j;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "stopLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unRegisterLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3ed

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/loc/a;->b:Lcom/loc/j;

    invoke-virtual {v1, v0}, Lcom/loc/j;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "unRegisterLocationListener"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
