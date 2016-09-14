.class public Lcom/nut/blehunter/ui/BindDeviceActivity;
.super Lcom/nut/blehunter/ui/b;
.source "BindDeviceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/nut/blehunter/ui/b/a/z;
.implements Lcom/nut/blehunter/ui/b/t;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/nut/blehunter/entity/Nut;

.field private d:Ljava/lang/String;

.field private e:Lcom/nut/blehunter/entity/Position;

.field private f:Lcom/nut/blehunter/n;

.field private g:Z

.field private h:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->g:Z

    .line 76
    new-instance v0, Lcom/nut/blehunter/ui/o;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/o;-><init>(Lcom/nut/blehunter/ui/BindDeviceActivity;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->h:Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/BindDeviceActivity;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 221
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/Main2Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    const-string v1, "com.nutspace.action.resume.main"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v1, "index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    const-string v1, "show_tips"

    iget-boolean v2, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->g:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 225
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->startActivity(Landroid/content/Intent;)V

    .line 226
    return-void
.end method

.method private d(I)V
    .locals 6

    .prologue
    const v5, 0x7f0d009b

    const v4, 0x7f0d009a

    const v0, 0x7f0d0099

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 305
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    .line 306
    invoke-virtual {p0, v4}, Lcom/nut/blehunter/ui/BindDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v4, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    .line 307
    invoke-virtual {p0, v5}, Lcom/nut/blehunter/ui/BindDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v5, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    .line 308
    const v0, 0x7f0d009c

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0d009c

    if-ne p1, v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    .line 309
    const v0, 0x7f0d009d

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0d009d

    if-ne p1, v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    .line 310
    const v0, 0x7f0d009e

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0d009e

    if-ne p1, v3, :cond_5

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 311
    return-void

    :cond_0
    move v0, v2

    .line 305
    goto :goto_0

    :cond_1
    move v0, v2

    .line 306
    goto :goto_1

    :cond_2
    move v0, v2

    .line 307
    goto :goto_2

    :cond_3
    move v0, v2

    .line 308
    goto :goto_3

    :cond_4
    move v0, v2

    .line 309
    goto :goto_4

    :cond_5
    move v1, v2

    .line 310
    goto :goto_5
.end method


# virtual methods
.method public final a(Landroid/os/Message;)V
    .locals 14

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_0

    .line 164
    const-string v1, "device_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    iget-object v2, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 199
    :sswitch_0
    const-string v1, "oauth_result"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 200
    if-eqz v0, :cond_c

    .line 201
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 202
    const-string v1, "device_id"

    iget-object v2, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->a(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 170
    :sswitch_1
    iget-object v1, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->h:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 171
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 172
    const-string v1, "bind_result"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 173
    if-eqz v1, :cond_b

    .line 174
    const v1, 0x7f0601e2

    invoke-static {p0, v1}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;I)V

    .line 175
    const-string v1, "hardware_version"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 177
    const-string v1, "firmware_version"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 179
    const-string v1, "manufacture_name"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 181
    const-string v1, "device_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 182
    const-string v1, "battery"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 183
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/l;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->g:Z

    .line 1253
    new-instance v8, Lcom/nut/blehunter/entity/PositionRecord;

    invoke-direct {v8}, Lcom/nut/blehunter/entity/PositionRecord;-><init>()V

    .line 1254
    invoke-static {}, Lcom/nut/blehunter/d/c;->a()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/nut/blehunter/entity/PositionRecord;->b:J

    .line 1255
    const-string v0, "BINDING"

    iput-object v0, v8, Lcom/nut/blehunter/entity/PositionRecord;->c:Ljava/lang/String;

    .line 1256
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->e:Lcom/nut/blehunter/entity/Position;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->e:Lcom/nut/blehunter/entity/Position;

    .line 2057
    iget-wide v10, v0, Lcom/nut/blehunter/entity/Position;->d:D

    const-wide/16 v12, 0x0

    cmpl-double v1, v10, v12

    if-eqz v1, :cond_4

    iget-wide v0, v0, Lcom/nut/blehunter/entity/Position;->c:D

    const-wide/16 v10, 0x0

    cmpl-double v0, v0, v10

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 1256
    :goto_1
    if-eqz v0, :cond_5

    .line 1257
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->e:Lcom/nut/blehunter/entity/Position;

    iget-wide v0, v0, Lcom/nut/blehunter/entity/Position;->d:D

    iput-wide v0, v8, Lcom/nut/blehunter/entity/PositionRecord;->e:D

    .line 1258
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->e:Lcom/nut/blehunter/entity/Position;

    iget-wide v0, v0, Lcom/nut/blehunter/entity/Position;->c:D

    iput-wide v0, v8, Lcom/nut/blehunter/entity/PositionRecord;->d:D

    .line 1271
    :cond_2
    :goto_2
    if-eqz v7, :cond_3

    .line 1272
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    iput v7, v0, Lcom/nut/blehunter/entity/Nut;->C:I

    .line 1275
    :cond_3
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    iput-object v8, v0, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    .line 1277
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    iput v6, v0, Lcom/nut/blehunter/entity/Nut;->p:I

    .line 1278
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    iput-object v3, v0, Lcom/nut/blehunter/entity/Nut;->w:Ljava/lang/String;

    .line 1279
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    iput-object v4, v0, Lcom/nut/blehunter/entity/Nut;->v:Ljava/lang/String;

    .line 1280
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    iput-object v5, v0, Lcom/nut/blehunter/entity/Nut;->x:Ljava/lang/String;

    .line 1281
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v1

    iget-object v1, v1, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/nut/blehunter/entity/Nut;->H:Ljava/lang/String;

    .line 1282
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/nut/blehunter/entity/Nut;->a:J

    .line 1283
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    iget-wide v2, v1, Lcom/nut/blehunter/entity/Nut;->a:J

    iput-wide v2, v0, Lcom/nut/blehunter/entity/Nut;->b:J

    .line 1284
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    const/4 v1, 0x1

    iput v1, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    .line 1285
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v1

    iget-object v1, v1, Lcom/nut/blehunter/entity/User;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/nut/blehunter/entity/Nut;->d:Ljava/lang/String;

    .line 1286
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v1

    iget-object v1, v1, Lcom/nut/blehunter/entity/User;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/nut/blehunter/entity/Nut;->e:Ljava/lang/String;

    .line 1287
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v2

    iget-object v2, v2, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    .line 1288
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    const/4 v1, 0x3

    iput v1, v0, Lcom/nut/blehunter/entity/Nut;->J:I

    .line 1289
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    const/4 v1, 0x1

    iput v1, v0, Lcom/nut/blehunter/entity/Nut;->s:I

    .line 1290
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    const/4 v1, 0x0

    iput v1, v0, Lcom/nut/blehunter/entity/Nut;->t:I

    .line 1291
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    const/4 v1, 0x5

    iput v1, v0, Lcom/nut/blehunter/entity/Nut;->u:I

    .line 1292
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nut/blehunter/entity/Nut;->E:Z

    .line 1293
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    const/4 v1, 0x0

    iput v1, v0, Lcom/nut/blehunter/entity/Nut;->y:I

    .line 1294
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/provider/l;->a(Lcom/nut/blehunter/entity/Nut;)V

    .line 185
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->n()V

    .line 186
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->a:Ljava/lang/String;

    .line 2298
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/nut/blehunter/service/NutTrackerService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2299
    const-string v2, "com.nutspace.action.check_new_nut_firmware_version"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2300
    const-string v2, "deviceId"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2301
    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/BindDeviceActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 187
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/Nut;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2502
    new-instance v0, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 2503
    const v1, 0x7f0600e6

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->a(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 2504
    const v1, 0x7f0600b9

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->b(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 2505
    const v1, 0x7f06008c

    new-instance v2, Lcom/nut/blehunter/ui/p;

    invoke-direct {v2, p0}, Lcom/nut/blehunter/ui/p;-><init>(Lcom/nut/blehunter/ui/BindDeviceActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 2511
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v0

    .line 3060
    const-string v1, "baseDialog"

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/a;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    .line 192
    :goto_3
    const-string v0, "bind_succeeded"

    .line 3281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2057
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1259
    :cond_5
    invoke-static {}, Lcom/nut/blehunter/u;->a()Lcom/nut/blehunter/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/u;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1260
    invoke-static {}, Lcom/nut/blehunter/u;->a()Lcom/nut/blehunter/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/u;->b()Lcom/nut/blehunter/entity/Position;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->e:Lcom/nut/blehunter/entity/Position;

    .line 1261
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->e:Lcom/nut/blehunter/entity/Position;

    iget-wide v0, v0, Lcom/nut/blehunter/entity/Position;->d:D

    iput-wide v0, v8, Lcom/nut/blehunter/entity/PositionRecord;->e:D

    .line 1262
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->e:Lcom/nut/blehunter/entity/Position;

    iget-wide v0, v0, Lcom/nut/blehunter/entity/Position;->c:D

    iput-wide v0, v8, Lcom/nut/blehunter/entity/PositionRecord;->d:D

    goto/16 :goto_2

    .line 2235
    :cond_6
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 2236
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v1

    .line 2237
    const/4 v2, 0x0

    .line 2238
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2239
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 2240
    if-eqz v1, :cond_7

    .line 2243
    if-eqz v2, :cond_8

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_d

    :cond_8
    :goto_5
    move-object v2, v1

    .line 2247
    goto :goto_4

    .line 1265
    :cond_9
    if-eqz v2, :cond_2

    .line 1266
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, v8, Lcom/nut/blehunter/entity/PositionRecord;->e:D

    .line 1267
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, v8, Lcom/nut/blehunter/entity/PositionRecord;->d:D

    goto/16 :goto_2

    .line 190
    :cond_a
    invoke-direct {p0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->c()V

    goto :goto_3

    .line 194
    :cond_b
    const v0, 0x7f060066

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4039
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 205
    :cond_c
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->h:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 206
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 207
    const v0, 0x7f060066

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5039
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 212
    :sswitch_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->h:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 213
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 214
    const v0, 0x7f060066

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6039
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 215
    const-string v0, "bind_disconnected_with_finish_button_tapped"

    .line 6281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    move-object v1, v2

    goto :goto_5

    .line 168
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xb -> :sswitch_1
        0x13 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/nut/blehunter/entity/CustomLatLng;)V
    .locals 8

    .prologue
    .line 230
    new-instance v1, Lcom/nut/blehunter/entity/Position;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 7048
    iget-wide v4, p1, Lcom/nut/blehunter/entity/CustomLatLng;->a:D

    .line 7052
    iget-wide v6, p1, Lcom/nut/blehunter/entity/CustomLatLng;->b:D

    .line 230
    invoke-direct/range {v1 .. v7}, Lcom/nut/blehunter/entity/Position;-><init>(JDD)V

    iput-object v1, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->e:Lcom/nut/blehunter/entity/Position;

    .line 232
    return-void
.end method

.method public final c(I)V
    .locals 3

    .prologue
    .line 358
    packed-switch p1, :pswitch_data_0

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 360
    :pswitch_0
    invoke-static {p0}, Lcom/nut/blehunter/d/d;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_0

    .line 364
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 365
    const-string v2, "output"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 366
    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 370
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 371
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/BindDeviceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 358
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final i()I
    .locals 1

    .prologue
    .line 142
    const v0, 0x7f0201e0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 468
    invoke-super {p0, p1, p2, p3}, Lcom/nut/blehunter/ui/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 469
    if-eq p2, v0, :cond_0

    .line 499
    :goto_0
    return-void

    .line 472
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 474
    :sswitch_0
    invoke-static {p0}, Lcom/nut/blehunter/d/k;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 478
    :sswitch_1
    invoke-static {p0, p3}, Lcom/nut/blehunter/d/k;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    invoke-static {p0}, Lcom/nut/blehunter/d/k;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 481
    :cond_1
    const-string v0, "take picture from camera error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 486
    :sswitch_2
    if-ne p2, v0, :cond_3

    .line 487
    invoke-static {p3}, Lcom/nut/blehunter/d/k;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->d:Ljava/lang/String;

    .line 488
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    if-eqz v0, :cond_2

    .line 489
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/nut/blehunter/entity/Nut;->i:Ljava/lang/String;

    .line 491
    :cond_2
    const v0, 0x7f0d0093

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/widget/CircleImageView;

    .line 492
    iget-object v1, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    invoke-static {v0, v1}, Lcom/nut/blehunter/t;->a(Landroid/widget/ImageView;Lcom/nut/blehunter/entity/Nut;)V

    .line 493
    const v0, 0x7f0d0095

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 495
    :cond_3
    const-string v0, "NTUIEventPair"

    const-string v1, "SETUP_ITEM_AVATAR"

    invoke-static {v0, v1}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 472
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x1a35 -> :sswitch_2
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 451
    const-string v0, "NTUIEventPair"

    const-string v1, "BACK_BUTTON_TAPPED"

    const-string v2, "DEVICEID"

    iget-object v3, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    iget-object v3, v3, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 453
    const-string v1, "shutdown"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 454
    const/16 v1, 0x17

    invoke-virtual {p0, v1, v0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->a(ILandroid/os/Bundle;)V

    .line 455
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->n()V

    .line 456
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onBackPressed()V

    .line 457
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 315
    const v0, 0x7f0d0096

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 316
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 346
    :goto_0
    :pswitch_0
    return-void

    .line 318
    :pswitch_1
    invoke-static {}, Lcom/nut/blehunter/ui/b/a/y;->a()Lcom/nut/blehunter/ui/b/a/y;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "pick_photo"

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/y;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 322
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/nut/blehunter/ui/BindDeviceActivity;->d(I)V

    .line 323
    const v1, 0x7f060059

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto :goto_0

    .line 326
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/nut/blehunter/ui/BindDeviceActivity;->d(I)V

    .line 327
    const v1, 0x7f06005e

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto :goto_0

    .line 330
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/nut/blehunter/ui/BindDeviceActivity;->d(I)V

    .line 331
    const v1, 0x7f06005a

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto :goto_0

    .line 334
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/nut/blehunter/ui/BindDeviceActivity;->d(I)V

    .line 335
    const v1, 0x7f06005d

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto :goto_0

    .line 338
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/nut/blehunter/ui/BindDeviceActivity;->d(I)V

    .line 339
    const v1, 0x7f06005c

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto :goto_0

    .line 342
    :pswitch_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/nut/blehunter/ui/BindDeviceActivity;->d(I)V

    .line 343
    const v1, 0x7f06005b

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto :goto_0

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0093
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const v3, 0x7f0d0093

    const/4 v2, 0x0

    .line 91
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 92
    if-nez p1, :cond_1

    .line 93
    new-instance v0, Lcom/nut/blehunter/entity/Nut;

    invoke-direct {v0}, Lcom/nut/blehunter/entity/Nut;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    .line 102
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->e()V

    .line 103
    new-instance v0, Lcom/nut/blehunter/n;

    const-class v1, Lcom/nut/blehunter/ui/BindDeviceActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nut/blehunter/n;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->f:Lcom/nut/blehunter/n;

    .line 105
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->setContentView(I)V

    .line 106
    const v0, 0x7f0601da

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->a(I)V

    .line 108
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "deviceId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->a:Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "productId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->b:I

    .line 110
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    iget v1, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->b:I

    iput v1, v0, Lcom/nut/blehunter/entity/Nut;->p:I

    .line 112
    invoke-virtual {p0, v3}, Lcom/nut/blehunter/ui/BindDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v0, 0x7f0d0099

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v0, 0x7f0d009a

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v0, 0x7f0d009b

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v0, 0x7f0d009c

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v0, 0x7f0d009d

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v0, 0x7f0d009e

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-virtual {p0, v3}, Lcom/nut/blehunter/ui/BindDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;

    .line 121
    iget-object v1, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    invoke-virtual {v1}, Lcom/nut/blehunter/entity/Nut;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->setImageResource(I)V

    .line 122
    iget-object v1, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    invoke-static {v0, v1}, Lcom/nut/blehunter/t;->a(Landroid/widget/ImageView;Lcom/nut/blehunter/entity/Nut;)V

    .line 125
    :try_start_0
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    iget v1, v1, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/provider/m;->a(I)Lcom/nut/blehunter/entity/t;

    move-result-object v3

    .line 126
    iget v0, v3, Lcom/nut/blehunter/entity/t;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v0, :pswitch_data_0

    .line 138
    :goto_1
    return-void

    .line 95
    :cond_1
    const-string v0, "nut"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    iput-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    .line 96
    const-string v0, "pic_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->d:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/nut/blehunter/entity/Nut;->i:Ljava/lang/String;

    goto/16 :goto_0

    .line 128
    :pswitch_0
    const v0, 0x7f0d0098

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 138
    :catch_0
    move-exception v0

    goto :goto_1

    .line 131
    :pswitch_1
    const v0, 0x7f0d0096

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1146
    const/4 v2, 0x1

    .line 1147
    iget-object v1, v3, Lcom/nut/blehunter/entity/t;->b:Lcom/nut/blehunter/entity/e;

    iget-object v1, v1, Lcom/nut/blehunter/entity/e;->a:Ljava/lang/String;

    .line 1148
    :goto_2
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/nut/blehunter/provider/l;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v3, Lcom/nut/blehunter/entity/t;->b:Lcom/nut/blehunter/entity/e;

    iget-object v4, v4, Lcom/nut/blehunter/entity/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1150
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 131
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    const v0, 0x7f0d0098

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 398
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->h:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 462
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->h:Landroid/os/CountDownTimer;

    .line 463
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onDestroy()V

    .line 464
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/16 v5, 0x14

    const/4 v1, 0x1

    .line 403
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 405
    const v2, 0x7f0d0248

    if-ne v0, v2, :cond_9

    .line 406
    const-string v0, "NTUIEventPair"

    const-string v2, "FINISH_BUTTON_TAPPED"

    const-string v3, "DEVICEID"

    iget-object v4, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    iget-object v4, v4, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const v0, 0x7f0d0096

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 409
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 411
    const v0, 0x7f060067

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    move v0, v1

    .line 446
    :goto_0
    return v0

    .line 414
    :cond_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->k()V

    .line 415
    invoke-static {v0}, Lcom/nut/blehunter/d/r;->a(Ljava/lang/String;)I

    move-result v2

    if-le v2, v5, :cond_1

    .line 416
    const v0, 0x7f060068

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/nut/blehunter/ui/BindDeviceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 8047
    const v2, 0x7f02026c

    invoke-static {p0, v2, v0}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;ILjava/lang/String;)V

    move v0, v1

    .line 417
    goto :goto_0

    .line 419
    :cond_1
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nut/blehunter/provider/l;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 420
    const v0, 0x7f060065

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    move v0, v1

    .line 421
    goto :goto_0

    .line 423
    :cond_2
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 424
    iget-object v2, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    iput-object v0, v2, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    .line 425
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 426
    const-string v3, "device_id"

    iget-object v4, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const/16 v3, 0xa

    invoke-virtual {p0, v3, v2}, Lcom/nut/blehunter/ui/BindDeviceActivity;->a(ILandroid/os/Bundle;)V

    .line 428
    iget-object v2, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->h:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 430
    const v2, 0x7f060059

    invoke-virtual {p0, v2}, Lcom/nut/blehunter/ui/BindDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 431
    const-string v0, "bind_finish_with_name_key"

    .line 8281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    :goto_1
    move v0, v1

    .line 443
    goto :goto_0

    .line 432
    :cond_4
    const v2, 0x7f06005e

    invoke-virtual {p0, v2}, Lcom/nut/blehunter/ui/BindDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 433
    const-string v0, "bind_finish_with_name_wallet"

    .line 9281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 434
    :cond_5
    const v2, 0x7f06005a

    invoke-virtual {p0, v2}, Lcom/nut/blehunter/ui/BindDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 435
    const-string v0, "bind_finish_with_name_laptop"

    .line 10281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 436
    :cond_6
    const v2, 0x7f06005d

    invoke-virtual {p0, v2}, Lcom/nut/blehunter/ui/BindDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 437
    const-string v0, "bind_finish_with_name_suitcase"

    .line 11281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 438
    :cond_7
    const v2, 0x7f06005c

    invoke-virtual {p0, v2}, Lcom/nut/blehunter/ui/BindDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 439
    const-string v0, "bind_finish_with_name_satchel"

    .line 12281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 440
    :cond_8
    const v2, 0x7f06005b

    invoke-virtual {p0, v2}, Lcom/nut/blehunter/ui/BindDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 441
    const-string v0, "bind_finish_with_name_other"

    .line 13281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 446
    :cond_9
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 350
    const-string v0, "nut"

    iget-object v1, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->c:Lcom/nut/blehunter/entity/Nut;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 351
    const-string v0, "pic_url"

    iget-object v1, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 353
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 381
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onStart()V

    .line 382
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->f()V

    .line 383
    invoke-static {}, Lcom/nut/blehunter/u;->a()Lcom/nut/blehunter/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nut/blehunter/u;->a(Lcom/nut/blehunter/ui/b/t;)V

    .line 384
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->f:Lcom/nut/blehunter/n;

    invoke-virtual {v0}, Lcom/nut/blehunter/n;->a()V

    .line 385
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/BindDeviceActivity;->g()V

    .line 390
    invoke-static {}, Lcom/nut/blehunter/u;->a()Lcom/nut/blehunter/u;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/u;->a(Lcom/nut/blehunter/ui/b/t;)V

    .line 391
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindDeviceActivity;->f:Lcom/nut/blehunter/n;

    invoke-virtual {v0}, Lcom/nut/blehunter/n;->b()V

    .line 392
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onStop()V

    .line 393
    return-void
.end method
