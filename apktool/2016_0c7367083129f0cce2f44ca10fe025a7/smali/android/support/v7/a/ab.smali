.class Landroid/support/v7/a/ab;
.super Landroid/support/v7/a/aa;
.source "AppCompatDelegateImplV14.java"


# instance fields
.field p:Z

.field private w:I

.field private x:Z

.field private y:Landroid/support/v7/a/ad;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/a/t;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/a/aa;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/a/t;)V

    .line 41
    const/16 v0, -0x64

    iput v0, p0, Landroid/support/v7/a/ab;->w:I

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/a/ab;->p:Z

    .line 51
    return-void
.end method

.method private p()V
    .locals 4

    .prologue
    .line 223
    iget-object v0, p0, Landroid/support/v7/a/ab;->y:Landroid/support/v7/a/ad;

    if-nez v0, :cond_1

    .line 224
    new-instance v1, Landroid/support/v7/a/ad;

    iget-object v0, p0, Landroid/support/v7/a/ab;->b:Landroid/content/Context;

    .line 4044
    sget-object v2, Landroid/support/v7/a/bg;->a:Landroid/support/v7/a/bg;

    if-nez v2, :cond_0

    .line 4045
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 4046
    new-instance v3, Landroid/support/v7/a/bg;

    const-string v0, "location"

    .line 4047
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-direct {v3, v2, v0}, Landroid/support/v7/a/bg;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v3, Landroid/support/v7/a/bg;->a:Landroid/support/v7/a/bg;

    .line 4049
    :cond_0
    sget-object v0, Landroid/support/v7/a/bg;->a:Landroid/support/v7/a/bg;

    .line 224
    invoke-direct {v1, p0, v0}, Landroid/support/v7/a/ad;-><init>(Landroid/support/v7/a/ab;Landroid/support/v7/a/bg;)V

    iput-object v1, p0, Landroid/support/v7/a/ab;->y:Landroid/support/v7/a/ad;

    .line 226
    :cond_1
    return-void
.end method

.method private q()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 235
    iget-boolean v2, p0, Landroid/support/v7/a/ab;->x:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/a/ab;->b:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 238
    iget-object v2, p0, Landroid/support/v7/a/ab;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 240
    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Landroid/support/v7/a/ab;->b:Landroid/content/Context;

    iget-object v5, p0, Landroid/support/v7/a/ab;->b:Landroid/content/Context;

    .line 241
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x0

    .line 240
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 244
    iget v2, v2, Landroid/content/pm/ActivityInfo;->configChanges:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_0

    .line 252
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 244
    goto :goto_0

    .line 245
    :catch_0
    move-exception v1

    .line 248
    const-string v2, "AppCompatDelegate"

    const-string v3, "Exception while getting ActivityInfo"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    move v0, v1

    .line 252
    goto :goto_0
.end method


# virtual methods
.method a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Landroid/support/v7/a/ac;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/a/ac;-><init>(Landroid/support/v7/a/ab;Landroid/view/Window$Callback;)V

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/16 v1, -0x64

    .line 55
    invoke-super {p0, p1}, Landroid/support/v7/a/aa;->a(Landroid/os/Bundle;)V

    .line 57
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v7/a/ab;->w:I

    if-ne v0, v1, :cond_0

    .line 60
    const-string v0, "appcompat:local_night_mode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/a/ab;->w:I

    .line 63
    :cond_0
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/support/v7/a/aa;->b(Landroid/os/Bundle;)V

    .line 166
    iget v0, p0, Landroid/support/v7/a/ab;->w:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    .line 168
    const-string v0, "appcompat:local_night_mode"

    iget v1, p0, Landroid/support/v7/a/ab;->w:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Landroid/support/v7/a/aa;->d()V

    .line 108
    invoke-virtual {p0}, Landroid/support/v7/a/ab;->j()Z

    .line 109
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Landroid/support/v7/a/aa;->e()V

    .line 116
    iget-object v0, p0, Landroid/support/v7/a/ab;->y:Landroid/support/v7/a/ad;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Landroid/support/v7/a/ab;->y:Landroid/support/v7/a/ad;

    invoke-virtual {v0}, Landroid/support/v7/a/ad;->a()V

    .line 119
    :cond_0
    return-void
.end method

.method f(I)I
    .locals 1

    .prologue
    .line 145
    sparse-switch p1, :sswitch_data_0

    .line 3306
    :goto_0
    return p1

    .line 147
    :sswitch_0
    invoke-direct {p0}, Landroid/support/v7/a/ab;->p()V

    .line 148
    iget-object v0, p0, Landroid/support/v7/a/ab;->y:Landroid/support/v7/a/ad;

    .line 3306
    iget-boolean v0, v0, Landroid/support/v7/a/ad;->b:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 148
    goto :goto_0

    .line 151
    :sswitch_1
    const/4 p1, -0x1

    goto :goto_0

    .line 145
    nop

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Landroid/support/v7/a/aa;->h()V

    .line 177
    iget-object v0, p0, Landroid/support/v7/a/ab;->y:Landroid/support/v7/a/ad;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Landroid/support/v7/a/ab;->y:Landroid/support/v7/a/ad;

    invoke-virtual {v0}, Landroid/support/v7/a/ad;->a()V

    .line 180
    :cond_0
    return-void
.end method

.method public final j()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 84
    .line 1159
    iget v0, p0, Landroid/support/v7/a/ab;->w:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_3

    iget v0, p0, Landroid/support/v7/a/ab;->w:I

    move v1, v0

    .line 87
    :goto_0
    invoke-virtual {p0, v1}, Landroid/support/v7/a/ab;->f(I)I

    move-result v0

    .line 88
    const/4 v4, -0x1

    if-eq v0, v4, :cond_7

    .line 2187
    iget-object v4, p0, Landroid/support/v7/a/ab;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2188
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 2189
    iget v6, v5, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0x30

    .line 2191
    const/4 v7, 0x2

    if-ne v0, v7, :cond_4

    const/16 v0, 0x20

    .line 2195
    :goto_1
    if-eq v6, v0, :cond_6

    .line 2196
    invoke-direct {p0}, Landroid/support/v7/a/ab;->q()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2202
    iget-object v0, p0, Landroid/support/v7/a/ab;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 2203
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    :goto_2
    move v0, v2

    .line 92
    :goto_3
    if-nez v1, :cond_2

    .line 94
    invoke-direct {p0}, Landroid/support/v7/a/ab;->p()V

    .line 95
    iget-object v1, p0, Landroid/support/v7/a/ab;->y:Landroid/support/v7/a/ad;

    .line 2318
    invoke-virtual {v1}, Landroid/support/v7/a/ad;->a()V

    .line 2323
    iget-object v3, v1, Landroid/support/v7/a/ad;->c:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_0

    .line 2324
    new-instance v3, Landroid/support/v7/a/ae;

    invoke-direct {v3, v1}, Landroid/support/v7/a/ae;-><init>(Landroid/support/v7/a/ad;)V

    iput-object v3, v1, Landroid/support/v7/a/ad;->c:Landroid/content/BroadcastReceiver;

    .line 2334
    :cond_0
    iget-object v3, v1, Landroid/support/v7/a/ad;->d:Landroid/content/IntentFilter;

    if-nez v3, :cond_1

    .line 2335
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, v1, Landroid/support/v7/a/ad;->d:Landroid/content/IntentFilter;

    .line 2336
    iget-object v3, v1, Landroid/support/v7/a/ad;->d:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2337
    iget-object v3, v1, Landroid/support/v7/a/ad;->d:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2338
    iget-object v3, v1, Landroid/support/v7/a/ad;->d:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2340
    :cond_1
    iget-object v3, v1, Landroid/support/v7/a/ad;->e:Landroid/support/v7/a/ab;

    iget-object v3, v3, Landroid/support/v7/a/ab;->b:Landroid/content/Context;

    iget-object v4, v1, Landroid/support/v7/a/ad;->c:Landroid/content/BroadcastReceiver;

    iget-object v1, v1, Landroid/support/v7/a/ad;->d:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    :cond_2
    iput-boolean v2, p0, Landroid/support/v7/a/ab;->x:Z

    .line 99
    return v0

    .line 1488
    :cond_3
    sget v0, Landroid/support/v7/a/u;->a:I

    move v1, v0

    goto :goto_0

    .line 2191
    :cond_4
    const/16 v0, 0x10

    goto :goto_1

    .line 2208
    :cond_5
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3, v5}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 2209
    iget v5, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v5, v5, -0x31

    or-int/2addr v0, v5

    iput v0, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 2211
    const/4 v0, 0x0

    invoke-virtual {v4, v3, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_2

    :cond_6
    move v0, v3

    .line 2219
    goto :goto_3

    :cond_7
    move v0, v3

    goto :goto_3
.end method
