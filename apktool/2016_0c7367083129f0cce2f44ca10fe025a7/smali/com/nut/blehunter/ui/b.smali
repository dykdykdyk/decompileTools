.class public Lcom/nut/blehunter/ui/b;
.super Landroid/support/v7/a/s;
.source "BaseActivity.java"


# instance fields
.field private a:Landroid/support/v7/widget/Toolbar;

.field private b:Landroid/os/Messenger;

.field private c:Landroid/os/Messenger;

.field private d:Landroid/content/Intent;

.field private e:Ljava/lang/String;

.field private f:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/support/v7/a/s;-><init>()V

    .line 152
    new-instance v0, Lcom/nut/blehunter/ui/c;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/c;-><init>(Lcom/nut/blehunter/ui/b;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/b;->f:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/b;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/nut/blehunter/ui/b;->c:Landroid/os/Messenger;

    return-object p1
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lcom/nut/blehunter/ui/b;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/b;->a(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public final a(ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 137
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_1

    .line 139
    if-eqz p2, :cond_0

    .line 140
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/nut/blehunter/ui/b;->b:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 143
    iget-object v1, p0, Lcom/nut/blehunter/ui/b;->c:Landroid/os/Messenger;

    if-eqz v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/nut/blehunter/ui/b;->c:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_1
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    iput-object v2, p0, Lcom/nut/blehunter/ui/b;->c:Landroid/os/Messenger;

    goto :goto_0
.end method

.method public a(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b;->h()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_0

    .line 248
    const v1, 0x7f0d0078

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 249
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 346
    new-instance v0, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 347
    invoke-virtual {v0, p1}, Lcom/nut/blehunter/ui/b/a/b;->a(Ljava/lang/String;)Lcom/nut/blehunter/ui/b/a/b;

    .line 348
    invoke-virtual {v0, p2}, Lcom/nut/blehunter/ui/b/a/b;->b(Ljava/lang/String;)Lcom/nut/blehunter/ui/b/a/b;

    .line 349
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/nut/blehunter/ui/b/a/b;->a(Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 350
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v0

    .line 5060
    const-string v1, "baseDialog"

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/a;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method protected final b(I)V
    .locals 2

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b;->h()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_0

    .line 256
    const v1, 0x7f0d0078

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 257
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 359
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    :goto_0
    return-void

    .line 362
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 363
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/b;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/nut/blehunter/ui/h;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/h;-><init>(Lcom/nut/blehunter/ui/b;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/b;->b:Landroid/os/Messenger;

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ble/BLEService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/b;->d:Landroid/content/Intent;

    .line 100
    return-void
.end method

.method public e_()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/nut/blehunter/ui/b;->d:Landroid/content/Intent;

    iget-object v1, p0, Lcom/nut/blehunter/ui/b;->f:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/nut/blehunter/ui/b;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 107
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/nut/blehunter/ui/b;->c:Landroid/os/Messenger;

    if-eqz v0, :cond_1

    .line 115
    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/nut/blehunter/ui/b;->b:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 118
    iget-object v1, p0, Lcom/nut/blehunter/ui/b;->c:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/nut/blehunter/ui/b;->c:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/b;->f:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/b;->unbindService(Landroid/content/ServiceConnection;)V

    .line 128
    :cond_1
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/nut/blehunter/ui/b;->c:Landroid/os/Messenger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    iget-object v0, p0, Lcom/nut/blehunter/ui/b;->f:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/b;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/b;->f:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/b;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
.end method

.method public final h()Landroid/support/v7/widget/Toolbar;
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/nut/blehunter/ui/b;->a:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_3

    .line 184
    const v0, 0x7f0d0077

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/nut/blehunter/ui/b;->a:Landroid/support/v7/widget/Toolbar;

    .line 185
    iget-object v0, p0, Lcom/nut/blehunter/ui/b;->a:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_3

    .line 186
    iget-object v0, p0, Lcom/nut/blehunter/ui/b;->a:Landroid/support/v7/widget/Toolbar;

    .line 2130
    invoke-virtual {p0}, Landroid/support/v7/a/s;->a()Landroid/support/v7/a/u;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/a/u;->a(Landroid/support/v7/widget/Toolbar;)V

    .line 1194
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b;->i()I

    move-result v1

    .line 1195
    if-lez v1, :cond_1

    .line 1196
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 1201
    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1202
    if-eqz v1, :cond_0

    .line 1203
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 1205
    :cond_0
    new-instance v1, Lcom/nut/blehunter/ui/d;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/d;-><init>(Lcom/nut/blehunter/ui/b;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3110
    invoke-virtual {p0}, Landroid/support/v7/a/s;->a()Landroid/support/v7/a/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/u;->a()Landroid/support/v7/a/a;

    move-result-object v0

    .line 1212
    if-nez v0, :cond_2

    .line 1213
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "actionbar not found, have you called setSupportActionBar method"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1198
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1216
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/a/a;->a()V

    .line 1217
    invoke-virtual {v0}, Landroid/support/v7/a/a;->b()V

    .line 189
    :cond_3
    iget-object v0, p0, Lcom/nut/blehunter/ui/b;->a:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method protected i()I
    .locals 1

    .prologue
    .line 222
    const v0, 0x7f02023e

    return v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 304
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 305
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 306
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/b;->startActivity(Landroid/content/Intent;)V

    .line 308
    const/4 v0, 0x0

    .line 310
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final k()V
    .locals 3

    .prologue
    .line 314
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/b;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 317
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 318
    if-nez v1, :cond_0

    .line 323
    :goto_0
    return-void

    .line 321
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method protected final l()V
    .locals 2

    .prologue
    .line 326
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/service/NutTrackerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 327
    const-string v1, "com.nutspace.action.logout"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/b;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 330
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b;->m()V

    .line 332
    return-void
.end method

.method protected final m()V
    .locals 2

    .prologue
    .line 335
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/Main2Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 336
    const-string v1, "com.nutspace.action.logout"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/b;->startActivity(Landroid/content/Intent;)V

    .line 338
    return-void
.end method

.method protected final n()V
    .locals 3

    .prologue
    .line 341
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.nutspace.action.restart.schedule.scan"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 343
    return-void
.end method

.method protected final o()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 405
    .line 406
    new-instance v3, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v3, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 407
    const-string v0, "version_info"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/nut/blehunter/d/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 408
    const-string v2, ""

    .line 409
    const-string v0, ""

    .line 411
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 412
    const-string v1, "versionName"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 413
    :try_start_1
    const-string v2, "description"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 417
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 418
    :cond_0
    const-string v0, "versionName or description is null."

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    :goto_1
    return-void

    .line 415
    :catch_0
    move-exception v1

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    :goto_2
    const-string v4, "dialog download new version"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, La/a/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 421
    :cond_1
    const v2, 0x7f060117

    invoke-virtual {p0, v2}, Lcom/nut/blehunter/ui/b;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 422
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/nut/blehunter/ui/b/a/b;->a(Ljava/lang/String;)Lcom/nut/blehunter/ui/b/a/b;

    .line 423
    invoke-virtual {v3, v0}, Lcom/nut/blehunter/ui/b/a/b;->b(Ljava/lang/String;)Lcom/nut/blehunter/ui/b/a/b;

    .line 425
    const v0, 0x7f060088

    new-instance v1, Lcom/nut/blehunter/ui/f;

    invoke-direct {v1, p0, p0}, Lcom/nut/blehunter/ui/f;-><init>(Lcom/nut/blehunter/ui/b;Landroid/content/Context;)V

    invoke-virtual {v3, v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 440
    const v0, 0x7f06008f

    new-instance v1, Lcom/nut/blehunter/ui/g;

    invoke-direct {v1, p0, p0}, Lcom/nut/blehunter/ui/g;-><init>(Lcom/nut/blehunter/ui/b;Landroid/content/Context;)V

    invoke-virtual {v3, v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 448
    invoke-virtual {v3}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v0

    .line 6060
    const-string v1, "baseDialog"

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/a;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 415
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/support/v7/a/s;->onCreate(Landroid/os/Bundle;)V

    .line 173
    invoke-static {p0}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->onAppStart()V

    .line 174
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 297
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 298
    const/4 v0, 0x1

    .line 300
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/a/s;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 288
    invoke-super {p0}, Landroid/support/v7/a/s;->onPause()V

    .line 289
    invoke-static {p0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 290
    iget-object v0, p0, Lcom/nut/blehunter/ui/b;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/nut/blehunter/ui/b;->e:Ljava/lang/String;

    .line 4273
    invoke-static {v0}, Lcom/umeng/analytics/b;->b(Ljava/lang/String;)V

    .line 293
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 279
    invoke-super {p0}, Landroid/support/v7/a/s;->onResume()V

    .line 280
    invoke-static {p0}, Lcom/umeng/analytics/b;->b(Landroid/content/Context;)V

    .line 281
    iget-object v0, p0, Lcom/nut/blehunter/ui/b;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/nut/blehunter/ui/b;->e:Ljava/lang/String;

    .line 3277
    invoke-static {v0}, Lcom/umeng/analytics/b;->a(Ljava/lang/String;)V

    .line 284
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 263
    invoke-super {p0}, Landroid/support/v7/a/s;->onStart()V

    .line 264
    const-string v0, "app is in background %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-boolean v2, Lcom/nut/blehunter/NutTrackerApplication;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    sget-boolean v0, Lcom/nut/blehunter/NutTrackerApplication;->b:Z

    if-eqz v0, :cond_0

    .line 266
    sput-boolean v3, Lcom/nut/blehunter/NutTrackerApplication;->b:Z

    .line 267
    const-string v0, "com.nutspace.action.app.foreground"

    .line 3272
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/nut/blehunter/service/NutTrackerService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3273
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3274
    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/b;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 269
    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .prologue
    .line 178
    invoke-super {p0, p1}, Landroid/support/v7/a/s;->setContentView(I)V

    .line 179
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b;->h()Landroid/support/v7/widget/Toolbar;

    .line 180
    return-void
.end method
