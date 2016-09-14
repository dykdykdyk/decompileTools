.class final Lcom/nut/blehunter/ui/ck;
.super Landroid/content/BroadcastReceiver;
.source "Main2Activity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/Main2Activity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/Main2Activity;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/nut/blehunter/ui/ck;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .prologue
    .line 211
    iget-object v0, p0, Lcom/nut/blehunter/ui/ck;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/Main2Activity;->c(Lcom/nut/blehunter/ui/Main2Activity;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/nut/blehunter/ui/ck;->a:Lcom/nut/blehunter/ui/Main2Activity;

    iget-object v1, p0, Lcom/nut/blehunter/ui/ck;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/Main2Activity;->d(Lcom/nut/blehunter/ui/Main2Activity;)Landroid/view/Menu;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/Main2Activity;->a(Lcom/nut/blehunter/ui/Main2Activity;Landroid/view/Menu;)V

    .line 214
    iget-object v0, p0, Lcom/nut/blehunter/ui/ck;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/Main2Activity;->c(Lcom/nut/blehunter/ui/Main2Activity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/nut/blehunter/ui/ck;->a:Lcom/nut/blehunter/ui/Main2Activity;

    sget-object v1, Lcom/nut/blehunter/ui/b/ac;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/Main2Activity;->a(Lcom/nut/blehunter/ui/Main2Activity;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_0

    .line 217
    check-cast v0, Lcom/nut/blehunter/ui/b/ac;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/ac;->b()V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    const-string v0, "com.nutspace.action.request.friend.location"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/ck;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/Main2Activity;->e(Lcom/nut/blehunter/ui/Main2Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    const-string v0, "friend_uuid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    const-string v0, "latlng"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/CustomLatLng;

    .line 223
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 226
    iget-object v2, p0, Lcom/nut/blehunter/ui/ck;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v2}, Lcom/nut/blehunter/ui/Main2Activity;->a(Lcom/nut/blehunter/ui/Main2Activity;)Lcom/nut/blehunter/entity/Friend;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nut/blehunter/ui/ck;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v2}, Lcom/nut/blehunter/ui/Main2Activity;->a(Lcom/nut/blehunter/ui/Main2Activity;)Lcom/nut/blehunter/entity/Friend;

    move-result-object v2

    iget-object v2, v2, Lcom/nut/blehunter/entity/Friend;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    iget-object v2, p0, Lcom/nut/blehunter/ui/ck;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v2}, Lcom/nut/blehunter/ui/Main2Activity;->f(Lcom/nut/blehunter/ui/Main2Activity;)Landroid/os/CountDownTimer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 230
    iget-object v2, p0, Lcom/nut/blehunter/ui/ck;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v2}, Lcom/nut/blehunter/ui/Main2Activity;->f(Lcom/nut/blehunter/ui/Main2Activity;)Landroid/os/CountDownTimer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    .line 232
    :cond_2
    iget-object v2, p0, Lcom/nut/blehunter/ui/ck;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v2}, Lcom/nut/blehunter/ui/Main2Activity;->g(Lcom/nut/blehunter/ui/Main2Activity;)V

    .line 234
    iget-object v2, p0, Lcom/nut/blehunter/ui/ck;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v2, v1}, Lcom/nut/blehunter/ui/Main2Activity;->b(Lcom/nut/blehunter/ui/Main2Activity;Ljava/lang/String;)Lcom/nut/blehunter/entity/Friend;

    move-result-object v8

    .line 235
    if-eqz v8, :cond_0

    .line 236
    new-instance v1, Lcom/nut/blehunter/entity/Position;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1048
    iget-wide v4, v0, Lcom/nut/blehunter/entity/CustomLatLng;->a:D

    .line 1052
    iget-wide v6, v0, Lcom/nut/blehunter/entity/CustomLatLng;->b:D

    .line 236
    invoke-direct/range {v1 .. v7}, Lcom/nut/blehunter/entity/Position;-><init>(JDD)V

    iput-object v1, v8, Lcom/nut/blehunter/entity/Friend;->f:Lcom/nut/blehunter/entity/Position;

    .line 237
    iget v0, v8, Lcom/nut/blehunter/entity/Friend;->e:I

    if-nez v0, :cond_3

    .line 238
    const/4 v0, 0x1

    iput v0, v8, Lcom/nut/blehunter/entity/Friend;->e:I

    .line 239
    iget-object v0, p0, Lcom/nut/blehunter/ui/ck;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v0, v8}, Lcom/nut/blehunter/ui/Main2Activity;->a(Lcom/nut/blehunter/ui/Main2Activity;Lcom/nut/blehunter/entity/Friend;)V

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/nut/blehunter/ui/ck;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/Main2Activity;->h(Lcom/nut/blehunter/ui/Main2Activity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 242
    iget-object v0, p0, Lcom/nut/blehunter/ui/ck;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/Main2Activity;->h(Lcom/nut/blehunter/ui/Main2Activity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/ck;->a:Lcom/nut/blehunter/ui/Main2Activity;

    iget-object v2, v8, Lcom/nut/blehunter/entity/Friend;->f:Lcom/nut/blehunter/entity/Position;

    iget-wide v2, v2, Lcom/nut/blehunter/entity/Position;->e:J

    invoke-static {v1, v2, v3}, Lcom/nut/blehunter/d/e;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    :cond_4
    iget-object v0, p0, Lcom/nut/blehunter/ui/ck;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/Main2Activity;->b(Lcom/nut/blehunter/ui/Main2Activity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 245
    iget-object v0, p0, Lcom/nut/blehunter/ui/ck;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/Main2Activity;->b(Lcom/nut/blehunter/ui/Main2Activity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    :cond_5
    iget-object v0, p0, Lcom/nut/blehunter/ui/ck;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v0, v8}, Lcom/nut/blehunter/ui/Main2Activity;->b(Lcom/nut/blehunter/ui/Main2Activity;Lcom/nut/blehunter/entity/Friend;)V

    .line 248
    iget-object v0, p0, Lcom/nut/blehunter/ui/ck;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v0, v8}, Lcom/nut/blehunter/ui/Main2Activity;->c(Lcom/nut/blehunter/ui/Main2Activity;Lcom/nut/blehunter/entity/Friend;)V

    .line 249
    iget-object v0, p0, Lcom/nut/blehunter/ui/ck;->a:Lcom/nut/blehunter/ui/Main2Activity;

    const-string v1, "tab_map_locate_friend_online_success"

    .line 1281
    invoke-static {v0, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/nut/blehunter/ui/ck;->a:Lcom/nut/blehunter/ui/Main2Activity;

    .line 2171
    const-string v1, "user_rating_location"

    invoke-static {v0, v1}, Lcom/nut/blehunter/d/l;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 2172
    add-int/lit8 v1, v1, 0x1

    .line 2173
    const-string v2, "user_rating_location"

    invoke-static {v0, v2, v1}, Lcom/nut/blehunter/d/l;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 250
    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/ck;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v0}, Lcom/nut/blehunter/d/l;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nut/blehunter/ui/ck;->a:Lcom/nut/blehunter/ui/Main2Activity;

    const-class v2, Lcom/nut/blehunter/ui/UserRatingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    const-string v1, "type"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    iget-object v1, p0, Lcom/nut/blehunter/ui/ck;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ui/Main2Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
