.class public Lcom/nut/blehunter/service/NutTrackerService;
.super Landroid/app/Service;
.source "NutTrackerService.java"

# interfaces
.implements Lcom/nut/blehunter/ui/b/t;


# instance fields
.field a:Lcom/nut/blehunter/service/a;

.field b:Lcom/nut/blehunter/ble/a;

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field e:Landroid/location/LocationListener;

.field private f:Landroid/os/Messenger;

.field private g:Landroid/os/Messenger;

.field private h:I

.field private i:Lcom/nut/blehunter/ble/q;

.field private j:Landroid/location/LocationManager;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Landroid/content/BroadcastReceiver;

.field private final m:Landroid/content/BroadcastReceiver;

.field private n:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->h:I

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->j:Landroid/location/LocationManager;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->k:Ljava/util/ArrayList;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->c:Ljava/util/Map;

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->d:Ljava/util/Map;

    .line 152
    new-instance v0, Lcom/nut/blehunter/service/b;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/service/b;-><init>(Lcom/nut/blehunter/service/NutTrackerService;)V

    iput-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->l:Landroid/content/BroadcastReceiver;

    .line 167
    new-instance v0, Lcom/nut/blehunter/service/m;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/service/m;-><init>(Lcom/nut/blehunter/service/NutTrackerService;)V

    iput-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->m:Landroid/content/BroadcastReceiver;

    .line 240
    new-instance v0, Lcom/nut/blehunter/service/s;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/service/s;-><init>(Lcom/nut/blehunter/service/NutTrackerService;)V

    iput-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->n:Landroid/content/ServiceConnection;

    .line 1765
    new-instance v0, Lcom/nut/blehunter/service/r;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/service/r;-><init>(Lcom/nut/blehunter/service/NutTrackerService;)V

    iput-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->e:Landroid/location/LocationListener;

    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/service/NutTrackerService;I)I
    .locals 0

    .prologue
    .line 126
    iput p1, p0, Lcom/nut/blehunter/service/NutTrackerService;->h:I

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 3

    .prologue
    const/16 v2, 0x15

    .line 889
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 32901
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_2

    const/4 v0, 0x1

    .line 32902
    :goto_0
    if-eqz v0, :cond_3

    const v0, 0x7f0201ff

    .line 889
    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f06004f

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/service/NutTrackerService;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 894
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_1

    .line 895
    const-string v1, "#35b68e"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 897
    :cond_1
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    .line 32901
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 32902
    :cond_3
    const v0, 0x7f0201fe

    goto :goto_1
.end method

.method static synthetic a(Lcom/nut/blehunter/service/NutTrackerService;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/nut/blehunter/service/NutTrackerService;->g:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic a(Lcom/nut/blehunter/service/NutTrackerService;)Lcom/nut/blehunter/ble/a;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->b:Lcom/nut/blehunter/ble/a;

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 401
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nut/blehunter/provider/m;->a(I)Lcom/nut/blehunter/entity/t;

    move-result-object v0

    .line 403
    :try_start_0
    iget-object v1, v0, Lcom/nut/blehunter/entity/t;->b:Lcom/nut/blehunter/entity/e;

    iget v1, v1, Lcom/nut/blehunter/entity/e;->b:I

    if-eq v1, v2, :cond_0

    .line 404
    iget-object v1, v0, Lcom/nut/blehunter/entity/t;->b:Lcom/nut/blehunter/entity/e;

    iget-object v1, v1, Lcom/nut/blehunter/entity/e;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 405
    const v1, 0x7f06018b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, v0, Lcom/nut/blehunter/entity/t;->b:Lcom/nut/blehunter/entity/e;

    iget-object v0, v0, Lcom/nut/blehunter/entity/e;->c:Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/nut/blehunter/service/NutTrackerService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 411
    :goto_0
    return-object v0

    .line 409
    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0

    .line 411
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private a(ILandroid/app/Notification;)V
    .locals 1

    .prologue
    .line 906
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/service/NutTrackerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 907
    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 908
    return-void
.end method

.method private a(ILcom/nut/blehunter/entity/CommonPushMsg;)V
    .locals 2

    .prologue
    .line 873
    const-class v0, Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/nut/blehunter/NutTrackerApplication;->a()Lcom/nut/blehunter/NutTrackerApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/NutTrackerApplication;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    :goto_0
    return-void

    .line 877
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 878
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 879
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 880
    const-string v1, "push_msg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 881
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/service/NutTrackerService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private a(ILcom/nut/blehunter/entity/Nut;)V
    .locals 2

    .prologue
    .line 862
    const-class v0, Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/nut/blehunter/NutTrackerApplication;->a()Lcom/nut/blehunter/NutTrackerApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/NutTrackerApplication;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    :goto_0
    return-void

    .line 865
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/DialogContainerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 866
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 867
    const-string v1, "nut"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 868
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 869
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/service/NutTrackerService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private a(ILcom/nut/blehunter/entity/i;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/nut/blehunter/d/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/nut/blehunter/entity/i;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1538
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1539
    iput-object v0, p2, Lcom/nut/blehunter/entity/i;->d:Ljava/lang/String;

    .line 1540
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nut/blehunter/provider/m;->a(ILcom/nut/blehunter/entity/i;)V

    .line 1555
    :goto_0
    return-void

    .line 1543
    :cond_0
    invoke-static {p0, v6}, Lcom/nut/blehunter/d/l;->a(Landroid/content/Context;Z)V

    .line 1544
    new-instance v1, Lcom/nut/blehunter/service/n;

    invoke-direct {v1, p0, p2, p1}, Lcom/nut/blehunter/service/n;-><init>(Lcom/nut/blehunter/service/NutTrackerService;Lcom/nut/blehunter/entity/i;I)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p2, Lcom/nut/blehunter/entity/i;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/nut/blehunter/service/n;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/16 v3, 0x17

    const/4 v2, 0x1

    .line 200
    sput-boolean v2, Lcom/nut/blehunter/NutTrackerApplication;->b:Z

    .line 201
    invoke-direct {p0}, Lcom/nut/blehunter/service/NutTrackerService;->c()V

    .line 202
    const-string v0, "last_activity"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    const-class v1, Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9440
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/nut/blehunter/service/NutTrackerService;->a(ILandroid/os/Bundle;)V

    .line 212
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nut/blehunter/service/NutTrackerService;->a(Z)V

    .line 214
    const-string v0, "NTAppLifeCycle"

    const-string v1, "ENTER_BACKGROUND"

    invoke-static {v0, v1}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void

    .line 206
    :cond_1
    const-class v1, Lcom/nut/blehunter/ui/BindDeviceActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 208
    const-string v1, "shutdown"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 209
    invoke-virtual {p0, v3, v0}, Lcom/nut/blehunter/service/NutTrackerService;->a(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private a(Lcom/nut/blehunter/entity/CustomLatLng;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nut/blehunter/entity/CustomLatLng;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1577
    invoke-static {p0}, Lcom/nut/blehunter/d/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1599
    :cond_0
    :goto_0
    return-void

    .line 1580
    :cond_1
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 1581
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/nut/blehunter/entity/User;->r:I

    if-eqz v0, :cond_0

    .line 1584
    if-eqz p1, :cond_0

    .line 1587
    const-string v0, "update start"

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 1588
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->d()Lcom/nut/blehunter/rxApi/service/FriendsService;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/nut/blehunter/rxApi/model/FriendPositionRequestBody;->createRequestBody(Lcom/nut/blehunter/entity/CustomLatLng;Ljava/util/List;)Lcom/nut/blehunter/rxApi/model/FriendPositionRequestBody;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nut/blehunter/rxApi/service/FriendsService;->postPosition(Lcom/nut/blehunter/rxApi/model/FriendPositionRequestBody;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/service/p;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/service/p;-><init>(Lcom/nut/blehunter/service/NutTrackerService;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0
.end method

.method private a(Lcom/nut/blehunter/entity/Nut;)V
    .locals 4

    .prologue
    .line 1107
    const/4 v0, 0x0

    .line 1108
    iget v1, p1, Lcom/nut/blehunter/entity/Nut;->J:I

    packed-switch v1, :pswitch_data_0

    .line 1133
    :goto_0
    if-eqz v0, :cond_0

    .line 1134
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/h;->b(Lrx/m;)Lrx/h;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/service/y;

    invoke-direct {v1, p0, p1}, Lcom/nut/blehunter/service/y;-><init>(Lcom/nut/blehunter/service/NutTrackerService;Lcom/nut/blehunter/entity/Nut;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/b/f;)Lrx/h;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/service/x;

    invoke-direct {v1, p0, p1}, Lcom/nut/blehunter/service/x;-><init>(Lcom/nut/blehunter/service/NutTrackerService;Lcom/nut/blehunter/entity/Nut;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/k;)Lrx/u;

    .line 1200
    :cond_0
    return-void

    .line 1110
    :pswitch_0
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->c()Lcom/nut/blehunter/rxApi/service/NutService;

    move-result-object v0

    const-string v1, "v2"

    const-string v2, "bind"

    new-instance v3, Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;

    invoke-direct {v3, p1}, Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;-><init>(Lcom/nut/blehunter/entity/Nut;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/nut/blehunter/rxApi/service/NutService;->bindNut(Ljava/lang/String;Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;)Lrx/h;

    move-result-object v0

    goto :goto_0

    .line 1114
    :pswitch_1
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->c()Lcom/nut/blehunter/rxApi/service/NutService;

    move-result-object v0

    const-string v1, "v3"

    const-string v2, "update"

    new-instance v3, Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;

    invoke-direct {v3, p1}, Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;-><init>(Lcom/nut/blehunter/entity/Nut;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/nut/blehunter/rxApi/service/NutService;->bindNut(Ljava/lang/String;Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;)Lrx/h;

    move-result-object v0

    goto :goto_0

    .line 1118
    :pswitch_2
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->c()Lcom/nut/blehunter/rxApi/service/NutService;

    move-result-object v1

    const-string v2, "tagId"

    iget-object v3, p1, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/nut/blehunter/rxApi/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nut/blehunter/rxApi/service/NutService;->deleteNut(Ljava/util/HashMap;)Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/nut/blehunter/service/w;

    invoke-direct {v2, p0, p1}, Lcom/nut/blehunter/service/w;-><init>(Lcom/nut/blehunter/service/NutTrackerService;Lcom/nut/blehunter/entity/Nut;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0

    .line 1108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/nut/blehunter/entity/Position;)V
    .locals 6

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1725
    :cond_0
    return-void

    .line 1712
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1713
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1714
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1715
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nut/blehunter/provider/l;->c(Ljava/lang/String;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v0

    .line 1716
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    if-eqz v2, :cond_2

    .line 1717
    iget-wide v2, p1, Lcom/nut/blehunter/entity/Position;->e:J

    iput-wide v2, v0, Lcom/nut/blehunter/entity/Nut;->b:J

    .line 1718
    iget-object v2, v0, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    iget-wide v4, p1, Lcom/nut/blehunter/entity/Position;->d:D

    iput-wide v4, v2, Lcom/nut/blehunter/entity/PositionRecord;->e:D

    .line 1719
    iget-object v2, v0, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    iget-wide v4, p1, Lcom/nut/blehunter/entity/Position;->c:D

    iput-wide v4, v2, Lcom/nut/blehunter/entity/PositionRecord;->d:D

    .line 1720
    iget-object v2, v0, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    iget-wide v4, p1, Lcom/nut/blehunter/entity/Position;->e:J

    iput-wide v4, v2, Lcom/nut/blehunter/entity/PositionRecord;->b:J

    .line 1721
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/nut/blehunter/provider/l;->a(Lcom/nut/blehunter/entity/Nut;Z)V

    .line 1723
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nut/blehunter/service/NutTrackerService;ILcom/nut/blehunter/entity/i;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Lcom/nut/blehunter/service/NutTrackerService;->a(ILcom/nut/blehunter/entity/i;)V

    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/service/NutTrackerService;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/nut/blehunter/service/NutTrackerService;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/service/NutTrackerService;Lcom/nut/blehunter/entity/CustomLatLng;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Lcom/nut/blehunter/service/NutTrackerService;->a(Lcom/nut/blehunter/entity/CustomLatLng;Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 921
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/Main2Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 922
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 33885
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/nut/blehunter/service/NutTrackerService;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v0

    .line 924
    const/4 v1, 0x6

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 925
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 926
    invoke-direct {p0, p2, v0}, Lcom/nut/blehunter/service/NutTrackerService;->a(ILandroid/app/Notification;)V

    .line 927
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 235
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 236
    const-string v1, "look_for_canceled"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 237
    const/16 v1, 0x26

    invoke-virtual {p0, v1, v0}, Lcom/nut/blehunter/service/NutTrackerService;->a(ILandroid/os/Bundle;)V

    .line 238
    return-void
.end method

.method private static b(Ljava/lang/String;)Lcom/nut/blehunter/entity/CommonPushMsg;
    .locals 2

    .prologue
    .line 821
    new-instance v1, Lcom/nut/blehunter/entity/CommonPushMsg;

    invoke-direct {v1}, Lcom/nut/blehunter/entity/CommonPushMsg;-><init>()V

    .line 823
    :try_start_0
    const-class v0, Lcom/nut/blehunter/entity/CommonPushMsg;

    .line 32049
    invoke-static {p0, v0}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 823
    check-cast v0, Lcom/nut/blehunter/entity/CommonPushMsg;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    :goto_0
    return-object v0

    .line 825
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 218
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nut/blehunter/NutTrackerApplication;->b:Z

    .line 219
    iget-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->b:Lcom/nut/blehunter/ble/a;

    invoke-virtual {v0}, Lcom/nut/blehunter/ble/a;->b()V

    .line 9744
    invoke-static {}, Lcom/nut/blehunter/u;->a()Lcom/nut/blehunter/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nut/blehunter/u;->a(Lcom/nut/blehunter/ui/b/t;)V

    .line 221
    invoke-direct {p0}, Lcom/nut/blehunter/service/NutTrackerService;->c()V

    .line 222
    invoke-direct {p0, v3}, Lcom/nut/blehunter/service/NutTrackerService;->a(Z)V

    .line 223
    invoke-direct {p0}, Lcom/nut/blehunter/service/NutTrackerService;->j()V

    .line 10525
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/l;->i()Ljava/util/List;

    move-result-object v0

    .line 10526
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 10527
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    .line 10528
    iget v2, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    if-ne v2, v3, :cond_0

    .line 10529
    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/service/NutTrackerService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_1
    const-string v0, "NTAppLifeCycle"

    const-string v1, "ENTER_FOREGROUND"

    invoke-static {v0, v1}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method private b(Lcom/nut/blehunter/entity/Nut;)V
    .locals 3

    .prologue
    .line 1605
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->c()Lcom/nut/blehunter/rxApi/service/NutService;

    move-result-object v0

    const-string v1, "tagId"

    iget-object v2, p1, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nut/blehunter/rxApi/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nut/blehunter/rxApi/service/NutService;->getFoundPositionRecords(Ljava/util/HashMap;)Lrx/h;

    move-result-object v0

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/h;->b(Lrx/m;)Lrx/h;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/service/q;

    invoke-direct {v1, p0, p1}, Lcom/nut/blehunter/service/q;-><init>(Lcom/nut/blehunter/service/NutTrackerService;Lcom/nut/blehunter/entity/Nut;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/k;)Lrx/u;

    .line 1680
    return-void
.end method

.method static synthetic b(Lcom/nut/blehunter/service/NutTrackerService;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/nut/blehunter/service/NutTrackerService;->b()V

    return-void
.end method

.method static synthetic c(Lcom/nut/blehunter/service/NutTrackerService;)I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->h:I

    return v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 229
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11440
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/service/NutTrackerService;->a(ILandroid/os/Bundle;)V

    .line 232
    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1253
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->b()Lcom/nut/blehunter/rxApi/service/AccountService;

    move-result-object v0

    const-string v1, "articleUUID"

    invoke-static {v1, p1}, Lcom/nut/blehunter/rxApi/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nut/blehunter/rxApi/service/AccountService;->getSharedUsers(Ljava/util/HashMap;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/service/e;

    invoke-direct {v1, p0, p1}, Lcom/nut/blehunter/service/e;-><init>(Lcom/nut/blehunter/service/NutTrackerService;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 1274
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 810
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/service/NutTrackerService;->stopForeground(Z)V

    .line 811
    invoke-virtual {p0}, Lcom/nut/blehunter/service/NutTrackerService;->stopSelf()V

    .line 812
    return-void
.end method

.method static synthetic d(Lcom/nut/blehunter/service/NutTrackerService;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/nut/blehunter/service/NutTrackerService;->c()V

    return-void
.end method

.method static synthetic e(Lcom/nut/blehunter/service/NutTrackerService;)Lrx/h;
    .locals 1

    .prologue
    .line 39321
    new-instance v0, Lcom/nut/blehunter/service/h;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/service/h;-><init>(Lcom/nut/blehunter/service/NutTrackerService;)V

    invoke-static {v0}, Lrx/h;->a(Lrx/i;)Lrx/h;

    move-result-object v0

    .line 126
    return-object v0
.end method

.method private e()V
    .locals 6

    .prologue
    .line 967
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/m;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1010
    :cond_0
    :goto_0
    return-void

    .line 970
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 971
    const/4 v2, 0x0

    .line 973
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/nut/blehunter/service/NutTrackerService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "deviceList.json"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v0, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 976
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 977
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 981
    :catch_0
    move-exception v0

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 983
    if-eqz v1, :cond_2

    .line 985
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 991
    :cond_2
    :goto_3
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 992
    const-string v1, "lastVersion"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 35108
    const-string v2, "product_version"

    invoke-static {p0, v2, v1}, Lcom/nut/blehunter/d/l;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 994
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 995
    if-eqz v0, :cond_0

    .line 996
    const-string v2, "items"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 997
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 998
    invoke-static {v0}, Lcom/nut/blehunter/e;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1000
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1001
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nut/blehunter/provider/m;->a(Ljava/util/List;)V

    .line 1002
    const-string v2, "insert local product, lastVersion=%d, count=%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, La/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 1008
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 985
    :cond_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 991
    :goto_4
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 992
    const-string v1, "lastVersion"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 34108
    const-string v2, "product_version"

    invoke-static {p0, v2, v1}, Lcom/nut/blehunter/d/l;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 994
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 995
    if-eqz v0, :cond_0

    .line 996
    const-string v2, "items"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 997
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 998
    invoke-static {v0}, Lcom/nut/blehunter/e;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1000
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1001
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nut/blehunter/provider/m;->a(Ljava/util/List;)V

    .line 1002
    const-string v2, "insert local product, lastVersion=%d, count=%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, La/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 1008
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 983
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v2, :cond_4

    .line 985
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 991
    :cond_4
    :goto_6
    :try_start_8
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 992
    const-string v2, "lastVersion"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 36108
    const-string v3, "product_version"

    invoke-static {p0, v3, v2}, Lcom/nut/blehunter/d/l;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 994
    const-string v3, "data"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 995
    if-eqz v1, :cond_5

    .line 996
    const-string v3, "items"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 997
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 998
    invoke-static {v1}, Lcom/nut/blehunter/e;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1000
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 1001
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/nut/blehunter/provider/m;->a(Ljava/util/List;)V

    .line 1002
    const-string v3, "insert local product, lastVersion=%d, count=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v3, v4}, La/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_3

    .line 1009
    :cond_5
    :goto_7
    throw v0

    .line 1008
    :catch_3
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7

    :catch_4
    move-exception v0

    goto/16 :goto_4

    :catch_5
    move-exception v0

    goto/16 :goto_3

    :catch_6
    move-exception v1

    goto :goto_6

    .line 983
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_5

    .line 981
    :catch_7
    move-exception v0

    move-object v1, v2

    goto/16 :goto_2
.end method

.method private f()V
    .locals 2

    .prologue
    .line 1014
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->d()Lcom/nut/blehunter/rxApi/service/FriendsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/nut/blehunter/rxApi/service/FriendsService;->getFriend()Lrx/h;

    move-result-object v0

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/h;->b(Lrx/m;)Lrx/h;

    move-result-object v0

    invoke-static {}, Lrx/a/b/a;->a()Lrx/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/m;)Lrx/h;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/service/u;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/service/u;-><init>(Lcom/nut/blehunter/service/NutTrackerService;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/k;)Lrx/u;

    .line 1063
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 1098
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/l;->e()Ljava/util/List;

    move-result-object v0

    .line 1099
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1100
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    .line 1101
    invoke-direct {p0, v0}, Lcom/nut/blehunter/service/NutTrackerService;->a(Lcom/nut/blehunter/entity/Nut;)V

    goto :goto_0

    .line 1104
    :cond_0
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 1203
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 1204
    if-nez v0, :cond_0

    .line 1250
    :goto_0
    return-void

    .line 1207
    :cond_0
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->b()Lcom/nut/blehunter/rxApi/service/AccountService;

    move-result-object v1

    invoke-static {v0}, Lcom/nut/blehunter/rxApi/model/ModifyUserRequestBody;->createModifyUserRequestBody(Lcom/nut/blehunter/entity/User;)Lcom/nut/blehunter/rxApi/model/ModifyUserRequestBody;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nut/blehunter/rxApi/service/AccountService;->modifyUser(Lcom/nut/blehunter/rxApi/model/ModifyUserRequestBody;)Lrx/h;

    move-result-object v1

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/m;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/h;->b(Lrx/m;)Lrx/h;

    move-result-object v1

    new-instance v2, Lcom/nut/blehunter/service/d;

    invoke-direct {v2, p0, v0}, Lcom/nut/blehunter/service/d;-><init>(Lcom/nut/blehunter/service/NutTrackerService;Lcom/nut/blehunter/entity/User;)V

    invoke-virtual {v1, v2}, Lrx/h;->a(Lrx/b/f;)Lrx/h;

    move-result-object v1

    new-instance v2, Lcom/nut/blehunter/service/c;

    invoke-direct {v2, p0, v0}, Lcom/nut/blehunter/service/c;-><init>(Lcom/nut/blehunter/service/NutTrackerService;Lcom/nut/blehunter/entity/User;)V

    invoke-virtual {v1, v2}, Lrx/h;->a(Lrx/k;)Lrx/u;

    goto :goto_0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 1277
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->b()Lcom/nut/blehunter/rxApi/service/AccountService;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1}, Lcom/nut/blehunter/rxApi/service/AccountService;->getDevices(Ljava/util/HashMap;)Lrx/h;

    move-result-object v0

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/h;->b(Lrx/m;)Lrx/h;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/service/g;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/service/g;-><init>(Lcom/nut/blehunter/service/NutTrackerService;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/b/f;)Lrx/h;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/service/f;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/service/f;-><init>(Lcom/nut/blehunter/service/NutTrackerService;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/k;)Lrx/u;

    .line 1318
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 1686
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/l;->f()Ljava/util/List;

    move-result-object v0

    .line 1687
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1688
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    .line 1689
    invoke-direct {p0, v0}, Lcom/nut/blehunter/service/NutTrackerService;->b(Lcom/nut/blehunter/entity/Nut;)V

    goto :goto_0

    .line 1692
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 949
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/l;->i()Ljava/util/List;

    move-result-object v0

    .line 950
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 951
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    .line 952
    iget v2, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 953
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 954
    const-string v3, "device_id"

    iget-object v4, v0, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const-string v3, "open_disconnect_alert"

    invoke-virtual {v0, p0}, Lcom/nut/blehunter/entity/Nut;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 957
    const/16 v0, 0x16

    invoke-virtual {p0, v0, v2}, Lcom/nut/blehunter/service/NutTrackerService;->a(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 961
    :cond_1
    return-void
.end method

.method final a(IILcom/nut/blehunter/entity/Nut;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 831
    const-string v0, ""

    .line 832
    packed-switch p1, :pswitch_data_0

    .line 852
    :goto_0
    :pswitch_0
    sget-boolean v1, Lcom/nut/blehunter/NutTrackerApplication;->b:Z

    if-eqz v1, :cond_1

    .line 853
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 854
    invoke-direct {p0, v0, p2}, Lcom/nut/blehunter/service/NutTrackerService;->a(Ljava/lang/String;I)V

    .line 859
    :cond_0
    :goto_1
    return-void

    .line 835
    :pswitch_1
    const v0, 0x7f060183

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p3, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/service/NutTrackerService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 836
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p3, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-direct {p0, v2}, Lcom/nut/blehunter/service/NutTrackerService;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 839
    :pswitch_2
    const v0, 0x7f0600bc

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p3, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/service/NutTrackerService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 840
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p3, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-direct {p0, v2}, Lcom/nut/blehunter/service/NutTrackerService;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 843
    :pswitch_3
    const v0, 0x7f060182

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p3, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/service/NutTrackerService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 844
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p3, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-direct {p0, v2}, Lcom/nut/blehunter/service/NutTrackerService;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 847
    :pswitch_4
    const v0, 0x7f0600a5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p3, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/service/NutTrackerService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 848
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p3, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-direct {p0, v2}, Lcom/nut/blehunter/service/NutTrackerService;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 857
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/nut/blehunter/service/NutTrackerService;->a(ILcom/nut/blehunter/entity/Nut;)V

    goto/16 :goto_1

    .line 832
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method final a(IIZ)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 415
    iget-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->b:Lcom/nut/blehunter/ble/a;

    if-nez v0, :cond_0

    .line 425
    :goto_0
    return-void

    .line 12429
    :cond_0
    if-eqz p1, :cond_5

    .line 12431
    rem-int/lit8 v0, p2, 0x3

    if-eqz v0, :cond_1

    rem-int/lit8 v0, p2, 0x3

    if-ne v0, v4, :cond_2

    .line 12432
    :cond_1
    div-int/lit8 v1, p2, 0x3

    .line 419
    :goto_1
    sget-object v0, Lcom/nut/blehunter/a;->o:[I

    array-length v0, v0

    if-le v0, p1, :cond_3

    if-ltz p1, :cond_3

    sget-object v0, Lcom/nut/blehunter/a;->o:[I

    aget v3, v0, p1

    .line 420
    :goto_2
    if-nez v3, :cond_4

    .line 421
    iget-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->b:Lcom/nut/blehunter/ble/a;

    invoke-virtual {v0, v1, p3}, Lcom/nut/blehunter/ble/a;->a(IZ)V

    goto :goto_0

    .line 12434
    :cond_2
    div-int/lit8 v0, p2, 0x3

    add-int/lit8 v1, v0, 0x1

    goto :goto_1

    .line 419
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 423
    :cond_4
    iget-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->b:Lcom/nut/blehunter/ble/a;

    .line 13116
    const/4 v5, 0x2

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/nut/blehunter/ble/a;->a(IZIZI)V

    goto :goto_0

    :cond_5
    move v1, p2

    goto :goto_1
.end method

.method public final a(ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 445
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 446
    if-eqz v0, :cond_1

    .line 447
    if-eqz p2, :cond_0

    .line 448
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/nut/blehunter/service/NutTrackerService;->f:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 451
    iget-object v1, p0, Lcom/nut/blehunter/service/NutTrackerService;->g:Landroid/os/Messenger;

    if-eqz v1, :cond_1

    .line 452
    iget-object v1, p0, Lcom/nut/blehunter/service/NutTrackerService;->g:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :cond_1
    :goto_0
    return-void

    .line 456
    :catch_0
    move-exception v0

    iput-object v2, p0, Lcom/nut/blehunter/service/NutTrackerService;->g:Landroid/os/Messenger;

    goto :goto_0
.end method

.method public final a(Lcom/nut/blehunter/entity/CustomLatLng;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 1795
    invoke-static {}, Lcom/nut/blehunter/d/c;->a()J

    move-result-wide v2

    .line 1796
    new-instance v1, Lcom/nut/blehunter/entity/Position;

    .line 37048
    iget-wide v4, p1, Lcom/nut/blehunter/entity/CustomLatLng;->a:D

    .line 37052
    iget-wide v6, p1, Lcom/nut/blehunter/entity/CustomLatLng;->b:D

    .line 1796
    invoke-direct/range {v1 .. v7}, Lcom/nut/blehunter/entity/Position;-><init>(JDD)V

    .line 37728
    iget-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->i:Lcom/nut/blehunter/ble/q;

    if-eqz v0, :cond_1

    .line 37731
    iget-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->i:Lcom/nut/blehunter/ble/q;

    .line 38030
    iget-object v2, v0, Lcom/nut/blehunter/ble/q;->a:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/nut/blehunter/ble/q;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 38031
    :cond_0
    const/4 v0, 0x0

    .line 37732
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1798
    :cond_1
    invoke-direct {p0, v1}, Lcom/nut/blehunter/service/NutTrackerService;->a(Lcom/nut/blehunter/entity/Position;)V

    .line 1799
    return-void

    .line 38033
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 38034
    iget-object v0, v0, Lcom/nut/blehunter/ble/q;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 38035
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 38036
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 38037
    if-nez v0, :cond_3

    .line 38038
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object v0, v3

    .line 38041
    goto :goto_0

    .line 37735
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 37736
    const-string v3, "report device=%s"

    new-array v4, v10, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, La/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38561
    invoke-static {v0}, Lcom/nut/blehunter/d/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 38562
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->c()Lcom/nut/blehunter/rxApi/service/NutService;

    move-result-object v4

    new-instance v5, Lcom/nut/blehunter/rxApi/model/FindRequestBody;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v1, Lcom/nut/blehunter/entity/Position;->c:D

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v1, Lcom/nut/blehunter/entity/Position;->d:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v3, v6, v7}, Lcom/nut/blehunter/rxApi/model/FindRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/nut/blehunter/rxApi/service/NutService;->findNut(Lcom/nut/blehunter/rxApi/model/FindRequestBody;)Lretrofit2/Call;

    move-result-object v3

    new-instance v4, Lcom/nut/blehunter/service/o;

    invoke-direct {v4, p0}, Lcom/nut/blehunter/service/o;-><init>(Lcom/nut/blehunter/service/NutTrackerService;)V

    invoke-interface {v3, v4}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 37738
    iget-object v3, p0, Lcom/nut/blehunter/service/NutTrackerService;->i:Lcom/nut/blehunter/ble/q;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 39048
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 39051
    iget-object v3, v3, Lcom/nut/blehunter/ble/q;->b:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37739
    :cond_6
    iget-object v3, p0, Lcom/nut/blehunter/service/NutTrackerService;->i:Lcom/nut/blehunter/ble/q;

    invoke-virtual {v3, v0, v10}, Lcom/nut/blehunter/ble/q;->a(Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1695
    .line 36700
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36703
    iget-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 36704
    iget-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36744
    :cond_0
    invoke-static {}, Lcom/nut/blehunter/u;->a()Lcom/nut/blehunter/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nut/blehunter/u;->a(Lcom/nut/blehunter/ui/b/t;)V

    .line 1697
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 762
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 741
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 27801
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 27802
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27803
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27804
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27805
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27806
    iget-object v1, p0, Lcom/nut/blehunter/service/NutTrackerService;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/nut/blehunter/service/NutTrackerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 28794
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 28795
    const-string v1, "com.nutspace.action.restart.schedule.scan"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28796
    const-string v1, "com.nutspace.action.stop.play.sound"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28797
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/nut/blehunter/service/NutTrackerService;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 744
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/nut/blehunter/service/z;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/service/z;-><init>(Lcom/nut/blehunter/service/NutTrackerService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->f:Landroid/os/Messenger;

    .line 745
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ble/BLEService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 746
    iget-object v1, p0, Lcom/nut/blehunter/service/NutTrackerService;->n:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/nut/blehunter/service/NutTrackerService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 748
    new-instance v0, Lcom/nut/blehunter/service/a;

    invoke-direct {v0}, Lcom/nut/blehunter/service/a;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->a:Lcom/nut/blehunter/service/a;

    .line 749
    new-instance v0, Lcom/nut/blehunter/ble/a;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ble/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->b:Lcom/nut/blehunter/ble/a;

    .line 750
    new-instance v0, Lcom/nut/blehunter/ble/q;

    invoke-direct {v0}, Lcom/nut/blehunter/ble/q;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->i:Lcom/nut/blehunter/ble/q;

    .line 751
    invoke-direct {p0}, Lcom/nut/blehunter/service/NutTrackerService;->j()V

    .line 752
    const-string v0, "NTAppLifeCycle"

    const-string v1, "APP_LAUNCHED"

    invoke-static {v0, v1}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-static {p0}, Lcom/nut/blehunter/d/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/nut/blehunter/d/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WIFI "

    .line 755
    :goto_0
    const-string v1, "NTStatsPhone"

    const-string v2, "NETWORK_CONDITION"

    const-string v3, "NETWORK_CONDITION"

    invoke-static {v1, v2, v3, v0}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29749
    :try_start_0
    iget-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->j:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 29750
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/service/NutTrackerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->j:Landroid/location/LocationManager;

    .line 29752
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->j:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/32 v2, 0x493e0

    const/high16 v4, 0x42c80000    # 100.0f

    iget-object v5, p0, Lcom/nut/blehunter/service/NutTrackerService;->e:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    :goto_1
    const-string v0, "start service"

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 758
    return-void

    .line 753
    :cond_1
    const-string v0, "CELLULAR"

    goto :goto_0

    :cond_2
    const-string v0, "NO_NETWORK"

    goto :goto_0

    .line 29754
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 767
    iget-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/service/NutTrackerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 768
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/service/NutTrackerService;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 769
    invoke-static {}, Lcom/nut/blehunter/u;->a()Lcom/nut/blehunter/u;

    move-result-object v0

    .line 30112
    invoke-virtual {v0}, Lcom/nut/blehunter/u;->e()V

    .line 30776
    iget-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->g:Landroid/os/Messenger;

    if-eqz v0, :cond_1

    .line 30778
    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 30779
    if-eqz v0, :cond_0

    .line 30780
    iget-object v1, p0, Lcom/nut/blehunter/service/NutTrackerService;->f:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 30781
    iget-object v1, p0, Lcom/nut/blehunter/service/NutTrackerService;->g:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 30782
    iget-object v1, p0, Lcom/nut/blehunter/service/NutTrackerService;->g:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30788
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->n:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/service/NutTrackerService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 31759
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->j:Landroid/location/LocationManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->e:Landroid/location/LocationListener;

    if-eqz v0, :cond_2

    .line 31760
    iget-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->j:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/nut/blehunter/service/NutTrackerService;->e:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 31761
    iput-object v2, p0, Lcom/nut/blehunter/service/NutTrackerService;->j:Landroid/location/LocationManager;

    .line 772
    :cond_2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 773
    return-void

    .line 30786
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->g:Landroid/os/Messenger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30788
    iget-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->n:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/service/NutTrackerService;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nut/blehunter/service/NutTrackerService;->n:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/service/NutTrackerService;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11

    .prologue
    const/4 v10, 0x6

    const/4 v4, 0x0

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 462
    if-eqz p1, :cond_0

    .line 463
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 464
    const-string v1, "com.nutspace.action.push.message"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 465
    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 466
    const-string v1, ""

    .line 469
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :try_start_1
    const-string v3, "event"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .line 475
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 476
    const-string v3, "notification"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 477
    if-eqz v0, :cond_0

    .line 478
    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 479
    const-string v2, "text"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 480
    const-string v3, "url"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 482
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/nut/blehunter/ui/Main2Activity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 489
    :goto_1
    const/high16 v3, 0x8000000

    invoke-static {p0, v6, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 490
    invoke-direct {p0, v1, v2, v0}, Lcom/nut/blehunter/service/NutTrackerService;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v0

    .line 491
    iput v10, v0, Landroid/app/Notification;->defaults:I

    .line 492
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 493
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    long-to-int v1, v2

    invoke-direct {p0, v1, v0}, Lcom/nut/blehunter/service/NutTrackerService;->a(ILandroid/app/Notification;)V

    .line 736
    :cond_0
    :goto_2
    return v5

    .line 472
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v4

    :goto_3
    const-string v8, "parseFindLoc Exception"

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v3, v8, v9}, La/a/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 485
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/nut/blehunter/ui/JumpWebViewActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 486
    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 487
    const-string v4, "URL"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 496
    :cond_2
    const-string v0, "logout"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 497
    new-instance v0, Lcom/nut/blehunter/entity/CommonPushMsg;

    invoke-direct {v0}, Lcom/nut/blehunter/entity/CommonPushMsg;-><init>()V

    .line 498
    iput-object v1, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->a:Ljava/lang/String;

    .line 499
    const/4 v0, 0x7

    new-instance v1, Lcom/nut/blehunter/entity/CommonPushMsg;

    invoke-direct {v1}, Lcom/nut/blehunter/entity/CommonPushMsg;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/nut/blehunter/service/NutTrackerService;->a(ILcom/nut/blehunter/entity/CommonPushMsg;)V

    goto :goto_2

    .line 500
    :cond_3
    const-string v0, "found"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 501
    invoke-static {v7}, Lcom/nut/blehunter/push/a;->a(Ljava/lang/String;)Lcom/nut/blehunter/entity/FindLocation;

    move-result-object v1

    .line 502
    if-eqz v1, :cond_0

    .line 14033
    iget-object v0, v1, Lcom/nut/blehunter/entity/FindLocation;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/nut/blehunter/entity/FindLocation;->b:Lcom/nut/blehunter/entity/Position;

    if-eqz v0, :cond_5

    move v0, v5

    .line 502
    :goto_4
    if-eqz v0, :cond_0

    .line 505
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    iget-object v3, v1, Lcom/nut/blehunter/entity/FindLocation;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/nut/blehunter/provider/l;->d(Ljava/lang/String;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v0

    .line 506
    if-eqz v0, :cond_0

    iget v3, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    if-eq v3, v2, :cond_4

    iget v2, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    if-ne v2, v10, :cond_0

    .line 510
    :cond_4
    invoke-static {}, Lcom/nut/blehunter/provider/k;->b()Lcom/nut/blehunter/provider/k;

    move-result-object v2

    iget-object v3, v1, Lcom/nut/blehunter/entity/FindLocation;->b:Lcom/nut/blehunter/entity/Position;

    iget-object v3, v3, Lcom/nut/blehunter/entity/Position;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/provider/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 513
    const v2, 0x7f060181

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    aput-object v7, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/nut/blehunter/service/NutTrackerService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 514
    sget-boolean v3, Lcom/nut/blehunter/NutTrackerApplication;->b:Z

    if-eqz v3, :cond_6

    .line 515
    iget-object v3, v1, Lcom/nut/blehunter/entity/FindLocation;->b:Lcom/nut/blehunter/entity/Position;

    iget-wide v8, v3, Lcom/nut/blehunter/entity/Position;->e:J

    long-to-int v3, v8

    .line 14930
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/nut/blehunter/ui/NutDetailActivity;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14931
    const/high16 v8, 0x10000000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 14932
    const-string v8, "nut"

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 14933
    const/high16 v8, 0x8000000

    invoke-static {p0, v6, v7, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 15885
    invoke-direct {p0, v4, v2, v7}, Lcom/nut/blehunter/service/NutTrackerService;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v2

    .line 14935
    iput v10, v2, Landroid/app/Notification;->defaults:I

    .line 14936
    iget v4, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 14937
    invoke-direct {p0, v3, v2}, Lcom/nut/blehunter/service/NutTrackerService;->a(ILandroid/app/Notification;)V

    .line 520
    :goto_5
    invoke-static {}, Lcom/nut/blehunter/u;->a()Lcom/nut/blehunter/u;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nut/blehunter/u;->a(Lcom/nut/blehunter/entity/FindLocation;)V

    .line 521
    iput v10, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    .line 522
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Lcom/nut/blehunter/provider/l;->a(Lcom/nut/blehunter/entity/Nut;Z)V

    .line 523
    invoke-direct {p0, v0}, Lcom/nut/blehunter/service/NutTrackerService;->b(Lcom/nut/blehunter/entity/Nut;)V

    goto/16 :goto_2

    :cond_5
    move v0, v6

    .line 14033
    goto :goto_4

    .line 517
    :cond_6
    iget-object v2, p0, Lcom/nut/blehunter/service/NutTrackerService;->b:Lcom/nut/blehunter/ble/a;

    invoke-virtual {v2, v5, v6}, Lcom/nut/blehunter/ble/a;->a(IZ)V

    .line 518
    const/16 v2, 0x8

    invoke-direct {p0, v2, v0}, Lcom/nut/blehunter/service/NutTrackerService;->a(ILcom/nut/blehunter/entity/Nut;)V

    goto :goto_5

    .line 524
    :cond_7
    const-string v0, "email_active"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 525
    new-instance v0, Lcom/nut/blehunter/entity/CommonPushMsg;

    invoke-direct {v0}, Lcom/nut/blehunter/entity/CommonPushMsg;-><init>()V

    .line 526
    iput-object v1, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->a:Ljava/lang/String;

    .line 527
    const/16 v0, 0x9

    new-instance v1, Lcom/nut/blehunter/entity/CommonPushMsg;

    invoke-direct {v1}, Lcom/nut/blehunter/entity/CommonPushMsg;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/nut/blehunter/service/NutTrackerService;->a(ILcom/nut/blehunter/entity/CommonPushMsg;)V

    goto/16 :goto_2

    .line 529
    :cond_8
    invoke-static {v7}, Lcom/nut/blehunter/service/NutTrackerService;->b(Ljava/lang/String;)Lcom/nut/blehunter/entity/CommonPushMsg;

    move-result-object v0

    .line 530
    if-eqz v0, :cond_9

    iget-object v1, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 531
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "parsePushMsg Exception, msg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 532
    :cond_a
    iget-object v1, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->a:Ljava/lang/String;

    const-string v3, "safe_region_enter"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 533
    sget-boolean v1, Lcom/nut/blehunter/NutTrackerApplication;->b:Z

    if-eqz v1, :cond_b

    .line 534
    const v1, 0x7f06019b

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->g:Ljava/lang/String;

    aput-object v3, v2, v6

    iget-object v0, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->k:Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/nut/blehunter/service/NutTrackerService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 535
    invoke-static {}, Lcom/nut/blehunter/d/c;->a()J

    move-result-wide v2

    long-to-int v1, v2

    .line 536
    invoke-direct {p0, v0, v1}, Lcom/nut/blehunter/service/NutTrackerService;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 538
    :cond_b
    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Lcom/nut/blehunter/service/NutTrackerService;->a(ILcom/nut/blehunter/entity/CommonPushMsg;)V

    goto/16 :goto_2

    .line 540
    :cond_c
    iget-object v1, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->a:Ljava/lang/String;

    const-string v3, "safe_region_leave"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 541
    sget-boolean v1, Lcom/nut/blehunter/NutTrackerApplication;->b:Z

    if-eqz v1, :cond_d

    .line 542
    const v1, 0x7f06019c

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->g:Ljava/lang/String;

    aput-object v3, v2, v6

    iget-object v0, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->k:Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/nut/blehunter/service/NutTrackerService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 543
    invoke-static {}, Lcom/nut/blehunter/d/c;->a()J

    move-result-wide v2

    long-to-int v1, v2

    .line 544
    invoke-direct {p0, v0, v1}, Lcom/nut/blehunter/service/NutTrackerService;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 546
    :cond_d
    const/16 v1, 0xc

    invoke-direct {p0, v1, v0}, Lcom/nut/blehunter/service/NutTrackerService;->a(ILcom/nut/blehunter/entity/CommonPushMsg;)V

    goto/16 :goto_2

    .line 548
    :cond_e
    iget-object v1, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->a:Ljava/lang/String;

    const-string v3, "position_request"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 549
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 550
    iget-object v2, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->i:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nut/blehunter/entity/o;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    invoke-static {}, Lcom/nut/blehunter/u;->a()Lcom/nut/blehunter/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/u;->b()Lcom/nut/blehunter/entity/Position;

    move-result-object v0

    .line 553
    if-eqz v0, :cond_f

    .line 554
    new-instance v2, Lcom/nut/blehunter/entity/CustomLatLng;

    iget-wide v6, v0, Lcom/nut/blehunter/entity/Position;->d:D

    iget-wide v8, v0, Lcom/nut/blehunter/entity/Position;->c:D

    invoke-direct {v2, v6, v7, v8, v9}, Lcom/nut/blehunter/entity/CustomLatLng;-><init>(DD)V

    invoke-direct {p0, v2, v1}, Lcom/nut/blehunter/service/NutTrackerService;->a(Lcom/nut/blehunter/entity/CustomLatLng;Ljava/util/List;)V

    .line 556
    :cond_f
    invoke-static {}, Lcom/nut/blehunter/u;->a()Lcom/nut/blehunter/u;

    move-result-object v0

    new-instance v2, Lcom/nut/blehunter/service/t;

    invoke-direct {v2, p0, v1}, Lcom/nut/blehunter/service/t;-><init>(Lcom/nut/blehunter/service/NutTrackerService;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/nut/blehunter/u;->a(Lcom/nut/blehunter/ui/b/t;)V

    goto/16 :goto_2

    .line 563
    :cond_10
    iget-object v1, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->a:Ljava/lang/String;

    const-string v3, "position_response"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 564
    iget-object v1, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->b:Lcom/nut/blehunter/entity/Position;

    if-eqz v1, :cond_0

    .line 565
    new-instance v1, Lcom/nut/blehunter/entity/CustomLatLng;

    iget-object v2, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->b:Lcom/nut/blehunter/entity/Position;

    iget-wide v2, v2, Lcom/nut/blehunter/entity/Position;->d:D

    iget-object v4, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->b:Lcom/nut/blehunter/entity/Position;

    iget-wide v6, v4, Lcom/nut/blehunter/entity/Position;->c:D

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/nut/blehunter/entity/CustomLatLng;-><init>(DD)V

    .line 566
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 567
    const-string v3, "com.nutspace.action.request.friend.location"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    const-string v3, "friend_uuid"

    iget-object v0, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->i:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    const-string v0, "latlng"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 570
    invoke-virtual {p0, v2}, Lcom/nut/blehunter/service/NutTrackerService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 572
    :cond_11
    iget-object v1, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->a:Ljava/lang/String;

    const-string v3, "friend_apply"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 16078
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v1

    .line 16079
    if-eqz v1, :cond_12

    .line 16082
    const-string v2, "new_friend_request"

    invoke-virtual {p0, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 16083
    invoke-static {p0}, Lcom/nut/blehunter/d/l;->b(Landroid/content/Context;)I

    move-result v3

    .line 16084
    iget-object v1, v1, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 16085
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 574
    :cond_12
    const v1, 0x7f060040

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->g:Ljava/lang/String;

    aput-object v0, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/nut/blehunter/service/NutTrackerService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 575
    invoke-static {}, Lcom/nut/blehunter/d/c;->a()J

    move-result-wide v2

    long-to-int v1, v2

    .line 576
    invoke-direct {p0, v0, v1}, Lcom/nut/blehunter/service/NutTrackerService;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 577
    :cond_13
    iget-object v1, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->a:Ljava/lang/String;

    const-string v3, "friend_request"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 578
    invoke-direct {p0}, Lcom/nut/blehunter/service/NutTrackerService;->f()V

    .line 579
    sget-boolean v1, Lcom/nut/blehunter/NutTrackerApplication;->b:Z

    if-eqz v1, :cond_14

    .line 580
    const v1, 0x7f0600a2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->g:Ljava/lang/String;

    aput-object v0, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/nut/blehunter/service/NutTrackerService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 581
    invoke-static {}, Lcom/nut/blehunter/d/c;->a()J

    move-result-wide v2

    long-to-int v1, v2

    .line 582
    invoke-direct {p0, v0, v1}, Lcom/nut/blehunter/service/NutTrackerService;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 584
    :cond_14
    const/16 v1, 0xa

    invoke-direct {p0, v1, v0}, Lcom/nut/blehunter/service/NutTrackerService;->a(ILcom/nut/blehunter/entity/CommonPushMsg;)V

    goto/16 :goto_2

    .line 587
    :cond_15
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v1

    iget-object v3, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/nut/blehunter/provider/l;->e(Ljava/lang/String;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v1

    .line 588
    if-eqz v1, :cond_0

    .line 589
    iget-object v3, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->a:Ljava/lang/String;

    const-string v4, "accept_share"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 590
    invoke-direct {p0, v2, v0}, Lcom/nut/blehunter/service/NutTrackerService;->a(ILcom/nut/blehunter/entity/CommonPushMsg;)V

    .line 591
    new-instance v2, Lcom/nut/blehunter/entity/ShareUserInfo;

    invoke-direct {v2}, Lcom/nut/blehunter/entity/ShareUserInfo;-><init>()V

    .line 592
    iget-object v3, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->g:Ljava/lang/String;

    iput-object v3, v2, Lcom/nut/blehunter/entity/ShareUserInfo;->b:Ljava/lang/String;

    .line 593
    iget-object v3, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->h:Ljava/lang/String;

    iput-object v3, v2, Lcom/nut/blehunter/entity/ShareUserInfo;->d:Ljava/lang/String;

    .line 16414
    iget-object v3, v1, Lcom/nut/blehunter/entity/Nut;->A:Ljava/util/List;

    if-nez v3, :cond_16

    .line 16415
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 16416
    iput-object v3, v1, Lcom/nut/blehunter/entity/Nut;->A:Ljava/util/List;

    .line 16418
    :cond_16
    iget-object v3, v1, Lcom/nut/blehunter/entity/Nut;->A:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    iput v5, v1, Lcom/nut/blehunter/entity/Nut;->y:I

    .line 596
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Lcom/nut/blehunter/provider/l;->a(Lcom/nut/blehunter/entity/Nut;Z)V

    .line 597
    iget-object v0, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/service/NutTrackerService;->c(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 598
    :cond_17
    iget-object v2, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->a:Ljava/lang/String;

    const-string v3, "cancel_share"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 599
    iget-boolean v2, v1, Lcom/nut/blehunter/entity/Nut;->E:Z

    if-eqz v2, :cond_18

    .line 600
    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/nut/blehunter/service/NutTrackerService;->a(ILcom/nut/blehunter/entity/CommonPushMsg;)V

    .line 601
    iget-object v0, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/service/NutTrackerService;->c(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 603
    :cond_18
    const/4 v2, 0x4

    invoke-direct {p0, v2, v0}, Lcom/nut/blehunter/service/NutTrackerService;->a(ILcom/nut/blehunter/entity/CommonPushMsg;)V

    .line 604
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 605
    const-string v2, "device_id"

    iget-object v3, v1, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const/16 v2, 0x11

    invoke-virtual {p0, v2, v0}, Lcom/nut/blehunter/service/NutTrackerService;->a(ILandroid/os/Bundle;)V

    .line 607
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    iget-object v1, v1, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/provider/l;->i(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 613
    :cond_19
    const-string v1, "com.nutspace.action.found.device"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 614
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->c()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 616
    const-string v0, "device"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 617
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/nut/blehunter/service/NutTrackerService;->i:Lcom/nut/blehunter/ble/q;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 17065
    iget-object v1, v2, Lcom/nut/blehunter/ble/q;->a:Ljava/util/Map;

    if-eqz v1, :cond_1c

    .line 17066
    iget-object v1, v2, Lcom/nut/blehunter/ble/q;->a:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 17067
    if-eqz v1, :cond_1c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 18055
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, v2, Lcom/nut/blehunter/ble/q;->b:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 18056
    :cond_1a
    const-wide/16 v2, 0x0

    .line 17067
    :goto_6
    sub-long v2, v8, v2

    const-wide/32 v8, 0x493e0

    cmp-long v1, v2, v8

    if-gez v1, :cond_1c

    move v1, v5

    .line 617
    :goto_7
    if-nez v1, :cond_0

    .line 618
    iget-object v1, p0, Lcom/nut/blehunter/service/NutTrackerService;->i:Lcom/nut/blehunter/ble/q;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Lcom/nut/blehunter/ble/q;->a(Ljava/lang/String;Z)V

    .line 18744
    invoke-static {}, Lcom/nut/blehunter/u;->a()Lcom/nut/blehunter/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nut/blehunter/u;->a(Lcom/nut/blehunter/ui/b/t;)V

    goto/16 :goto_2

    .line 18058
    :cond_1b
    iget-object v1, v2, Lcom/nut/blehunter/ble/q;->b:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_6

    :cond_1c
    move v1, v6

    .line 17072
    goto :goto_7

    .line 623
    :cond_1d
    const-string v0, "Send ACTION_FOUND_DEVICE but user is not login"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 624
    invoke-direct {p0}, Lcom/nut/blehunter/service/NutTrackerService;->d()V

    goto/16 :goto_2

    .line 626
    :cond_1e
    const-string v1, "com.nutspace.action.app.background"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 627
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    invoke-direct {p0, p1}, Lcom/nut/blehunter/service/NutTrackerService;->a(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 630
    :cond_1f
    const-string v1, "com.nutspace.action.app.foreground"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 631
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    invoke-direct {p0}, Lcom/nut/blehunter/service/NutTrackerService;->b()V

    goto/16 :goto_2

    .line 634
    :cond_20
    const-string v1, "com.nutspace.action.bluetooth.state.changed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 635
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 636
    const/16 v1, 0xa

    if-ne v0, v1, :cond_21

    .line 637
    const v0, 0x7f060180

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/service/NutTrackerService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 18911
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/nut/blehunter/ui/Main2Activity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18912
    const/high16 v2, 0x8000000

    invoke-static {p0, v6, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 19885
    invoke-direct {p0, v4, v0, v1}, Lcom/nut/blehunter/service/NutTrackerService;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v0

    .line 18915
    const/4 v1, 0x3

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 18917
    const/16 v1, 0x3e8

    invoke-direct {p0, v1, v0}, Lcom/nut/blehunter/service/NutTrackerService;->a(ILandroid/app/Notification;)V

    .line 20440
    const/16 v0, 0x24

    invoke-virtual {p0, v0, v4}, Lcom/nut/blehunter/service/NutTrackerService;->a(ILandroid/os/Bundle;)V

    goto/16 :goto_2

    .line 639
    :cond_21
    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 20941
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/service/NutTrackerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 20942
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 641
    invoke-direct {p0}, Lcom/nut/blehunter/service/NutTrackerService;->c()V

    goto/16 :goto_2

    .line 643
    :cond_22
    const-string v1, "com.nutspace.action.region.change"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 644
    invoke-static {p0}, Lcom/nut/blehunter/d/h;->a(Landroid/content/Context;)Z

    move-result v0

    .line 645
    invoke-static {p0}, Lcom/nut/blehunter/d/l;->d(Landroid/content/Context;)Z

    move-result v1

    .line 646
    invoke-virtual {p0}, Lcom/nut/blehunter/service/NutTrackerService;->a()V

    .line 647
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 649
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_23
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 650
    iget-object v1, p0, Lcom/nut/blehunter/service/NutTrackerService;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 651
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/provider/l;->d(Ljava/lang/String;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v1

    .line 652
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 653
    if-eqz v0, :cond_23

    if-eqz v1, :cond_23

    .line 654
    iget v4, v0, Lcom/nut/blehunter/entity/User;->l:I

    if-nez v4, :cond_24

    .line 655
    iget v4, v1, Lcom/nut/blehunter/entity/Nut;->D:I

    iget v7, v0, Lcom/nut/blehunter/entity/User;->m:I

    invoke-virtual {p0, v4, v7, v6}, Lcom/nut/blehunter/service/NutTrackerService;->a(IIZ)V

    .line 657
    :cond_24
    invoke-virtual {v0}, Lcom/nut/blehunter/entity/User;->f()Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x7

    .line 659
    :goto_9
    iget v4, v1, Lcom/nut/blehunter/entity/Nut;->I:I

    invoke-virtual {p0, v0, v4, v1}, Lcom/nut/blehunter/service/NutTrackerService;->a(IILcom/nut/blehunter/entity/Nut;)V

    goto :goto_8

    :cond_25
    move v0, v2

    .line 657
    goto :goto_9

    .line 663
    :cond_26
    iget-object v0, p0, Lcom/nut/blehunter/service/NutTrackerService;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto/16 :goto_2

    .line 665
    :cond_27
    const-string v1, "com.nutspace.action.sync.server"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 666
    const-string v0, "receive sync server action"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 667
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->c()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 668
    invoke-static {p0}, Lcom/nut/blehunter/d/b;->a(Landroid/content/Context;)V

    .line 669
    invoke-direct {p0}, Lcom/nut/blehunter/service/NutTrackerService;->g()V

    .line 670
    invoke-direct {p0}, Lcom/nut/blehunter/service/NutTrackerService;->h()V

    .line 671
    invoke-direct {p0}, Lcom/nut/blehunter/service/NutTrackerService;->i()V

    goto/16 :goto_2

    .line 673
    :cond_28
    const-string v0, "Send ACTION_SYNC_SERVER but user is not login"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 674
    invoke-direct {p0}, Lcom/nut/blehunter/service/NutTrackerService;->d()V

    goto/16 :goto_2

    .line 676
    :cond_29
    const-string v1, "com.nutspace.action.execute.nut.api"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 677
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->c()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 678
    const-string v0, "nut"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    .line 679
    const-string v1, "sync nut %s to server action"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 680
    invoke-direct {p0, v0}, Lcom/nut/blehunter/service/NutTrackerService;->a(Lcom/nut/blehunter/entity/Nut;)V

    goto/16 :goto_2

    .line 682
    :cond_2a
    const-string v0, "Send ACTION_EXECUTE_NUT_API but user is not login"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 683
    invoke-direct {p0}, Lcom/nut/blehunter/service/NutTrackerService;->d()V

    goto/16 :goto_2

    .line 685
    :cond_2b
    const-string v1, "com.nutspace.action.execute.user.api"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 686
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->c()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 687
    invoke-direct {p0}, Lcom/nut/blehunter/service/NutTrackerService;->h()V

    goto/16 :goto_2

    .line 689
    :cond_2c
    const-string v0, "Send ACTION_EXECUTE_USER_API but user is not login"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 690
    invoke-direct {p0}, Lcom/nut/blehunter/service/NutTrackerService;->d()V

    goto/16 :goto_2

    .line 692
    :cond_2d
    const-string v1, "com.nutspace.action.sync.friends.index"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 693
    const-string v0, "friends"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 21454
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 21455
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v1

    iget-object v1, v1, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    .line 21456
    new-instance v2, Lcom/nut/blehunter/service/l;

    invoke-direct {v2, p0, v0, v1}, Lcom/nut/blehunter/service/l;-><init>(Lcom/nut/blehunter/service/NutTrackerService;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-static {v2}, Lrx/h;->a(Lrx/i;)Lrx/h;

    move-result-object v0

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/m;)Lrx/h;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/service/k;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/service/k;-><init>(Lcom/nut/blehunter/service/NutTrackerService;)V

    .line 21726
    invoke-static {v1, v0}, Lrx/h;->a(Lrx/t;Lrx/h;)Lrx/u;

    goto/16 :goto_2

    .line 695
    :cond_2e
    const-string v1, "com.nutspace.action.temp_not_disturb"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 696
    invoke-virtual {p0}, Lcom/nut/blehunter/service/NutTrackerService;->a()V

    goto/16 :goto_2

    .line 697
    :cond_2f
    const-string v1, "com.nutspace.action.check_new_nut_firmware_version"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 698
    const-string v0, "deviceId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22501
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/provider/l;->c(Ljava/lang/String;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v0

    .line 22502
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/Nut;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22505
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v1

    iget v2, v0, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/provider/m;->a(I)Lcom/nut/blehunter/entity/t;

    move-result-object v1

    .line 22506
    iget-object v2, v1, Lcom/nut/blehunter/entity/t;->c:Lcom/nut/blehunter/entity/i;

    if-eqz v2, :cond_0

    .line 22512
    :try_start_2
    iget-object v2, v1, Lcom/nut/blehunter/entity/t;->c:Lcom/nut/blehunter/entity/i;

    iget-object v2, v2, Lcom/nut/blehunter/entity/i;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 22514
    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->v:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    .line 22519
    if-le v2, v0, :cond_0

    .line 22520
    iget v0, v1, Lcom/nut/blehunter/entity/t;->a:I

    iget-object v1, v1, Lcom/nut/blehunter/entity/t;->c:Lcom/nut/blehunter/entity/i;

    invoke-direct {p0, v0, v1}, Lcom/nut/blehunter/service/NutTrackerService;->a(ILcom/nut/blehunter/entity/i;)V

    goto/16 :goto_2

    .line 22516
    :catch_1
    move-exception v0

    const-string v1, "format firmware version exception"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, La/a/a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 700
    :cond_30
    const-string v1, "com.nutspace.action.logout"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 23440
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v4}, Lcom/nut/blehunter/service/NutTrackerService;->a(ILandroid/os/Bundle;)V

    .line 24064
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 24065
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/nut/blehunter/service/NutTrackerService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24066
    const-string v2, "com.nutspace.action.sync.server"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 24067
    const/16 v2, 0x3e8

    const/high16 v3, 0x20000000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 24069
    if-eqz v1, :cond_31

    .line 24070
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 704
    :cond_31
    const-string v0, "push_channel_id"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/nut/blehunter/d/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 707
    if-eqz v0, :cond_32

    .line 708
    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 710
    :cond_32
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->d()V

    .line 711
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->g()V

    .line 712
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/l;->h()V

    .line 713
    invoke-static {}, Lcom/nut/blehunter/provider/j;->b()Lcom/nut/blehunter/provider/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/j;->d()V

    .line 714
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0, p0, v6}, Lcom/nut/blehunter/entity/o;->a(Landroid/content/Context;Z)V

    .line 715
    const-string v0, "/rec"

    .line 25046
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25047
    invoke-static {v1}, Lcom/nut/blehunter/d/d;->a(Ljava/io/File;)Z

    .line 25233
    const-string v0, "sync_time"

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/l;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 717
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/nut/blehunter/d/l;->a(Landroid/content/Context;J)V

    .line 26108
    const-string v0, "product_version"

    invoke-static {p0, v0, v6}, Lcom/nut/blehunter/d/l;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 719
    invoke-direct {p0}, Lcom/nut/blehunter/service/NutTrackerService;->d()V

    goto/16 :goto_2

    .line 720
    :cond_33
    const-string v1, "com.nutspace.action.start.service"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 721
    const-string v0, "is_active"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 722
    if-eqz v0, :cond_34

    .line 723
    invoke-direct {p0}, Lcom/nut/blehunter/service/NutTrackerService;->b()V

    .line 725
    :cond_34
    invoke-direct {p0}, Lcom/nut/blehunter/service/NutTrackerService;->f()V

    .line 726
    invoke-direct {p0}, Lcom/nut/blehunter/service/NutTrackerService;->g()V

    .line 727
    invoke-direct {p0}, Lcom/nut/blehunter/service/NutTrackerService;->e()V

    .line 728
    invoke-direct {p0}, Lcom/nut/blehunter/service/NutTrackerService;->i()V

    .line 26359
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->a()Lcom/nut/blehunter/rxApi/service/AuthLoginService;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Basic "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v2

    iget-object v2, v2, Lcom/nut/blehunter/entity/User;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nut/blehunter/rxApi/service/AuthLoginService;->getUser(Ljava/lang/String;)Lrx/h;

    move-result-object v0

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/h;->b(Lrx/m;)Lrx/h;

    move-result-object v0

    invoke-static {}, Lrx/a/b/a;->a()Lrx/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/m;)Lrx/h;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/service/i;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/service/i;-><init>(Lcom/nut/blehunter/service/NutTrackerService;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/k;)Lrx/u;

    .line 26393
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->c()Lcom/nut/blehunter/rxApi/service/NutService;

    move-result-object v0

    invoke-interface {v0}, Lcom/nut/blehunter/rxApi/service/NutService;->getNuts()Lrx/h;

    move-result-object v0

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/h;->b(Lrx/m;)Lrx/h;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/service/j;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/service/j;-><init>(Lcom/nut/blehunter/service/NutTrackerService;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/k;)Lrx/u;

    .line 27066
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->f()Lcom/nut/blehunter/rxApi/service/RegionService;

    move-result-object v0

    invoke-interface {v0}, Lcom/nut/blehunter/rxApi/service/RegionService;->getSafeRegion()Lrx/h;

    move-result-object v0

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/h;->b(Lrx/m;)Lrx/h;

    move-result-object v0

    invoke-static {}, Lrx/a/b/a;->a()Lrx/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/m;)Lrx/h;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/service/v;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/service/v;-><init>(Lcom/nut/blehunter/service/NutTrackerService;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/k;)Lrx/u;

    goto/16 :goto_2

    .line 732
    :cond_35
    const-string v1, "com.nutspace.action.notification.status"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 472
    :catch_2
    move-exception v3

    goto/16 :goto_3
.end method
