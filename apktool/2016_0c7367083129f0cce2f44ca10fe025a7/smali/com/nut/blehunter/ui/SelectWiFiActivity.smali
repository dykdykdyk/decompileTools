.class public Lcom/nut/blehunter/ui/SelectWiFiActivity;
.super Lcom/nut/blehunter/ui/b;
.source "SelectWiFiActivity.java"


# instance fields
.field a:Lcom/nut/blehunter/entity/User;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private f:Landroid/widget/ListView;

.field private g:Lcom/nut/blehunter/ui/gf;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nut/blehunter/entity/aj;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/widget/TextView;

.field private j:Lcom/nut/blehunter/entity/ai;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Landroid/os/Handler;

.field private final o:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->b:I

    .line 47
    const/16 v0, 0xb

    iput v0, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->c:I

    .line 49
    const/16 v0, 0xc

    iput v0, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->d:I

    .line 51
    const/16 v0, 0xd

    iput v0, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->e:I

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->m:Z

    .line 71
    new-instance v0, Lcom/nut/blehunter/ui/gb;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/gb;-><init>(Lcom/nut/blehunter/ui/SelectWiFiActivity;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->n:Landroid/os/Handler;

    .line 365
    new-instance v0, Lcom/nut/blehunter/ui/gd;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/gd;-><init>(Lcom/nut/blehunter/ui/SelectWiFiActivity;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->o:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/SelectWiFiActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 187
    iget-object v1, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->a:Lcom/nut/blehunter/entity/User;

    if-nez v1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v0

    .line 190
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->a:Lcom/nut/blehunter/entity/User;

    invoke-virtual {v1, p1}, Lcom/nut/blehunter/entity/User;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 194
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/SelectWiFiActivity;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/nut/blehunter/ui/SelectWiFiActivity;->c()V

    return-void
.end method

.method static synthetic c(Lcom/nut/blehunter/ui/SelectWiFiActivity;)Lcom/nut/blehunter/ui/gf;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->g:Lcom/nut/blehunter/ui/gf;

    return-object v0
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 226
    iget-object v0, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->a:Lcom/nut/blehunter/entity/User;

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/User;->g()Ljava/util/ArrayList;

    move-result-object v3

    .line 229
    iget-object v0, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->j:Lcom/nut/blehunter/entity/ai;

    .line 2105
    iget-object v1, v0, Lcom/nut/blehunter/entity/ai;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 2107
    iget-object v1, v0, Lcom/nut/blehunter/entity/ai;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/nut/blehunter/entity/ai;->b:Ljava/util/List;

    .line 2109
    iget-object v1, v0, Lcom/nut/blehunter/entity/ai;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/nut/blehunter/entity/ai;->c:Ljava/util/List;

    .line 231
    iget-object v0, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->j:Lcom/nut/blehunter/entity/ai;

    .line 3091
    iget-object v0, v0, Lcom/nut/blehunter/entity/ai;->c:Ljava/util/List;

    .line 231
    iput-object v0, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->k:Ljava/util/List;

    .line 233
    iget-object v0, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->k:Ljava/util/List;

    if-eqz v0, :cond_1

    move v1, v2

    .line 234
    :goto_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 237
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3300
    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 239
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 243
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 244
    new-instance v3, Lcom/nut/blehunter/entity/aj;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/SelectWiFiActivity;->d(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v3, v0, v4}, Lcom/nut/blehunter/entity/aj;-><init>(Ljava/lang/String;Z)V

    .line 245
    iget-object v0, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->h:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 248
    :catch_0
    move-exception v0

    const-string v1, "initWIFIList Exception"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, La/a/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/nut/blehunter/ui/SelectWiFiActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->h:Ljava/util/List;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 312
    iget-object v0, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->a:Lcom/nut/blehunter/entity/User;

    if-nez v0, :cond_0

    move v0, v1

    .line 324
    :goto_0
    return v0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->a:Lcom/nut/blehunter/entity/User;

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/User;->g()Ljava/util/ArrayList;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 317
    goto :goto_0

    .line 319
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 320
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 321
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 324
    goto :goto_0
.end method

.method static synthetic e(Lcom/nut/blehunter/ui/SelectWiFiActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->l:Ljava/lang/String;

    return-object v0
.end method

.method private e(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 353
    const-string v1, "home"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    const-string v1, "company"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    const-string v1, "other"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    iget-object v1, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 357
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 358
    invoke-direct {p0, v0, p1}, Lcom/nut/blehunter/ui/SelectWiFiActivity;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    const/4 v0, 0x1

    .line 362
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/nut/blehunter/ui/SelectWiFiActivity;)Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->m:Z

    return v0
.end method

.method static synthetic g(Lcom/nut/blehunter/ui/SelectWiFiActivity;)Lcom/nut/blehunter/entity/User;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->a:Lcom/nut/blehunter/entity/User;

    return-object v0
.end method

.method static synthetic h(Lcom/nut/blehunter/ui/SelectWiFiActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->n:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final c(Ljava/lang/String;)I
    .locals 2

    .prologue
    const/16 v0, 0xc

    .line 335
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/SelectWiFiActivity;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 336
    iget-object v1, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->l:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/nut/blehunter/ui/SelectWiFiActivity;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/SelectWiFiActivity;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 338
    const/16 v0, 0xb

    .line 348
    :cond_0
    :goto_0
    return v0

    .line 343
    :cond_1
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/SelectWiFiActivity;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 348
    :cond_2
    const/16 v0, 0xd

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v0, 0x7f030043

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SelectWiFiActivity;->setContentView(I)V

    .line 92
    const v0, 0x7f06017e

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SelectWiFiActivity;->a(I)V

    .line 1116
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->a:Lcom/nut/blehunter/entity/User;

    .line 1117
    new-instance v0, Lcom/nut/blehunter/entity/ai;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/entity/ai;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->j:Lcom/nut/blehunter/entity/ai;

    .line 1118
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/SelectWiFiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "WIFIConf"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->l:Ljava/lang/String;

    .line 1120
    const v0, 0x7f0d0143

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SelectWiFiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->f:Landroid/widget/ListView;

    .line 1121
    const v0, 0x7f0d0142

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SelectWiFiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->i:Landroid/widget/TextView;

    .line 1122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->h:Ljava/util/List;

    .line 94
    invoke-direct {p0}, Lcom/nut/blehunter/ui/SelectWiFiActivity;->c()V

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 100
    new-instance v0, Lcom/nut/blehunter/ui/gf;

    iget-object v1, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->h:Ljava/util/List;

    invoke-direct {v0, p0, p0, v1}, Lcom/nut/blehunter/ui/gf;-><init>(Lcom/nut/blehunter/ui/SelectWiFiActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->g:Lcom/nut/blehunter/ui/gf;

    .line 101
    iget-object v0, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->g:Lcom/nut/blehunter/ui/gf;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1198
    iget-object v0, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->f:Landroid/widget/ListView;

    new-instance v1, Lcom/nut/blehunter/ui/gc;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/gc;-><init>(Lcom/nut/blehunter/ui/SelectWiFiActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 108
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/SelectWiFiActivity;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onDestroy()V

    .line 113
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
