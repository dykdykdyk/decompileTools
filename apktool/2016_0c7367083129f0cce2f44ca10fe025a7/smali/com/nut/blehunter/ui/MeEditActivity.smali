.class public Lcom/nut/blehunter/ui/MeEditActivity;
.super Lcom/nut/blehunter/ui/b;
.source "MeEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/nut/blehunter/ui/b/a/ad;
.implements Lcom/nut/blehunter/ui/b/a/d;
.implements Lcom/nut/blehunter/ui/b/a/z;


# instance fields
.field private final a:I

.field private final b:I

.field private c:Lcom/nut/blehunter/ui/widget/CircleImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    .line 65
    const/4 v0, 0x4

    iput v0, p0, Lcom/nut/blehunter/ui/MeEditActivity;->a:I

    .line 66
    const/4 v0, 0x5

    iput v0, p0, Lcom/nut/blehunter/ui/MeEditActivity;->b:I

    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/MeEditActivity;)V
    .locals 2

    .prologue
    .line 61
    .line 6441
    invoke-static {p0}, Lcom/nut/blehunter/d/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6442
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/MeEditActivity;->l()V

    .line 6443
    :goto_0
    return-void

    .line 6445
    :cond_0
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 6446
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->b()Lcom/nut/blehunter/rxApi/service/AccountService;

    move-result-object v0

    invoke-interface {v0}, Lcom/nut/blehunter/rxApi/service/AccountService;->logout()Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/dl;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/dl;-><init>(Lcom/nut/blehunter/ui/MeEditActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/MeEditActivity;Lcom/nut/blehunter/entity/User;)V
    .locals 2

    .prologue
    .line 4417
    if-eqz p1, :cond_0

    .line 4420
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->b()Lcom/nut/blehunter/rxApi/service/AccountService;

    move-result-object v0

    invoke-static {p1}, Lcom/nut/blehunter/rxApi/model/ModifyUserRequestBody;->createModifyUserRequestBody(Lcom/nut/blehunter/entity/User;)Lcom/nut/blehunter/rxApi/model/ModifyUserRequestBody;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nut/blehunter/rxApi/service/AccountService;->modifyUser(Lcom/nut/blehunter/rxApi/model/ModifyUserRequestBody;)Lrx/h;

    move-result-object v0

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/h;->b(Lrx/m;)Lrx/h;

    move-result-object v0

    invoke-static {}, Lrx/a/b/a;->a()Lrx/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/m;)Lrx/h;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/dk;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/dk;-><init>(Lcom/nut/blehunter/ui/MeEditActivity;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/k;)Lrx/u;

    .line 61
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/MeEditActivity;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 61
    .line 5385
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 5386
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->b()Lcom/nut/blehunter/rxApi/service/AccountService;

    move-result-object v0

    const-string v1, "bindThirdAccount"

    const-string v2, "0"

    invoke-static {v2, p1}, Lcom/nut/blehunter/rxApi/model/ThirdAccountRequestBody;->createBindThirdAccountRequestBody(Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/ThirdAccountRequestBody;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nut/blehunter/rxApi/service/AccountService;->bindThirdAccount(Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/ThirdAccountRequestBody;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/dj;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/dj;-><init>(Lcom/nut/blehunter/ui/MeEditActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 61
    return-void
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/MeEditActivity;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 61
    .line 6363
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 6364
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->b()Lcom/nut/blehunter/rxApi/service/AccountService;

    move-result-object v0

    const-string v1, "unBindThirdAccount"

    const-string v2, "0"

    invoke-static {v2, p1}, Lcom/nut/blehunter/rxApi/model/ThirdAccountRequestBody;->createUnBindThirdAccountRequestBody(Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/ThirdAccountRequestBody;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nut/blehunter/rxApi/service/AccountService;->bindThirdAccount(Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/ThirdAccountRequestBody;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/di;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/di;-><init>(Lcom/nut/blehunter/ui/MeEditActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 61
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/DialogFragment;I)V
    .locals 3

    .prologue
    .line 259
    invoke-virtual {p1}, Landroid/support/v4/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 269
    :goto_1
    return-void

    .line 259
    :pswitch_0
    const-string v2, "input_text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 261
    :pswitch_1
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 262
    check-cast p1, Lcom/nut/blehunter/ui/b/a/j;

    .line 3102
    iget-object v1, p1, Lcom/nut/blehunter/ui/b/a/j;->f:Ljava/lang/String;

    .line 263
    iput-object v1, v0, Lcom/nut/blehunter/entity/User;->b:Ljava/lang/String;

    .line 264
    iget-object v2, p0, Lcom/nut/blehunter/ui/MeEditActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/nut/blehunter/entity/o;->a(Landroid/content/Context;Lcom/nut/blehunter/entity/User;)V

    goto :goto_1

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x52a6f482
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/nut/blehunter/ui/b/a/ab;I)V
    .locals 3

    .prologue
    .line 273
    invoke-virtual {p1}, Lcom/nut/blehunter/ui/b/a/ab;->dismissAllowingStateLoss()V

    .line 274
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 275
    iput p2, v0, Lcom/nut/blehunter/entity/User;->j:I

    .line 276
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/nut/blehunter/entity/o;->a(Landroid/content/Context;Lcom/nut/blehunter/entity/User;)V

    .line 277
    iget-object v1, v0, Lcom/nut/blehunter/entity/User;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    iget v1, v0, Lcom/nut/blehunter/entity/User;->j:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 279
    iget-object v0, p0, Lcom/nut/blehunter/ui/MeEditActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f0601b4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 4074
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/nut/blehunter/ui/b/a/ab;->f:Lcom/nut/blehunter/ui/b/a/ad;

    .line 285
    return-void

    .line 280
    :cond_1
    iget v0, v0, Lcom/nut/blehunter/entity/User;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/nut/blehunter/ui/MeEditActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f0601b5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public final c()V
    .locals 8

    .prologue
    const v1, 0x7f0a001e

    const v7, 0x7f0a001a

    const v6, 0x7f060165

    .line 288
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v3

    .line 289
    if-nez v3, :cond_0

    .line 335
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/MeEditActivity;->c:Lcom/nut/blehunter/ui/widget/CircleImageView;

    iget-object v2, v3, Lcom/nut/blehunter/entity/User;->e:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/nut/blehunter/t;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 293
    iget-object v0, v3, Lcom/nut/blehunter/entity/User;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/nut/blehunter/ui/MeEditActivity;->d:Landroid/widget/TextView;

    iget-object v2, v3, Lcom/nut/blehunter/entity/User;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    :cond_1
    iget-object v0, v3, Lcom/nut/blehunter/entity/User;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 301
    iget v0, v3, Lcom/nut/blehunter/entity/User;->j:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 302
    iget-object v0, p0, Lcom/nut/blehunter/ui/MeEditActivity;->e:Landroid/widget/TextView;

    const v2, 0x7f0601b4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 308
    :cond_2
    :goto_1
    invoke-virtual {v3}, Lcom/nut/blehunter/entity/User;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 309
    iget-object v0, p0, Lcom/nut/blehunter/ui/MeEditActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/nut/blehunter/entity/User;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nut/blehunter/d/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Lcom/nut/blehunter/ui/MeEditActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/MeEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 316
    :goto_2
    invoke-virtual {v3}, Lcom/nut/blehunter/entity/User;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 317
    iget-object v0, p0, Lcom/nut/blehunter/ui/MeEditActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 318
    iget-object v0, p0, Lcom/nut/blehunter/ui/MeEditActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/MeEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    :goto_3
    invoke-virtual {v3}, Lcom/nut/blehunter/entity/User;->h()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 329
    iget-object v0, p0, Lcom/nut/blehunter/ui/MeEditActivity;->h:Landroid/widget/TextView;

    const v2, 0x7f060164

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 330
    iget-object v0, p0, Lcom/nut/blehunter/ui/MeEditActivity;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/MeEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 303
    :cond_3
    iget v0, v3, Lcom/nut/blehunter/entity/User;->j:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 304
    iget-object v0, p0, Lcom/nut/blehunter/ui/MeEditActivity;->e:Landroid/widget/TextView;

    const v2, 0x7f0601b5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 312
    :cond_4
    iget-object v0, p0, Lcom/nut/blehunter/ui/MeEditActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 313
    iget-object v0, p0, Lcom/nut/blehunter/ui/MeEditActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/MeEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 320
    :cond_5
    invoke-virtual {v3}, Lcom/nut/blehunter/entity/User;->k()Z

    move-result v4

    .line 321
    if-eqz v4, :cond_6

    iget-object v0, v3, Lcom/nut/blehunter/entity/User;->c:Lcom/nut/blehunter/entity/Email;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Email;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/nut/blehunter/d/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 322
    :goto_4
    if-eqz v4, :cond_7

    move v0, v1

    .line 323
    :goto_5
    iget-object v5, p0, Lcom/nut/blehunter/ui/MeEditActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v2, p0, Lcom/nut/blehunter/ui/MeEditActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/MeEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 325
    const v0, 0x7f0d010a

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/MeEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v4, :cond_8

    const/16 v0, 0x8

    :goto_6
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 321
    :cond_6
    const v0, 0x7f060166

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/MeEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_4

    .line 322
    :cond_7
    const v0, 0x7f0a0015

    goto :goto_5

    .line 325
    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    .line 332
    :cond_9
    iget-object v0, p0, Lcom/nut/blehunter/ui/MeEditActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 333
    iget-object v0, p0, Lcom/nut/blehunter/ui/MeEditActivity;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/MeEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0
.end method

.method public final c(I)V
    .locals 3

    .prologue
    .line 197
    packed-switch p1, :pswitch_data_0

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 199
    :pswitch_0
    invoke-static {p0}, Lcom/nut/blehunter/d/d;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_0

    .line 203
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    const-string v2, "output"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/MeEditActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 206
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 207
    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/nut/blehunter/ui/MeEditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 212
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/MeEditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 222
    invoke-super {p0, p1, p2, p3}, Lcom/nut/blehunter/ui/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 223
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 226
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 236
    :sswitch_0
    invoke-static {p0}, Lcom/nut/blehunter/d/k;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 228
    :sswitch_1
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/MeEditActivity;->c()V

    goto :goto_0

    .line 232
    :sswitch_2
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/MeEditActivity;->c()V

    goto :goto_0

    .line 240
    :sswitch_3
    invoke-static {p0, p3}, Lcom/nut/blehunter/d/k;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    invoke-static {p0}, Lcom/nut/blehunter/d/k;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 243
    :cond_1
    const-string v0, "take picture from camera error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 248
    :sswitch_4
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 249
    invoke-static {p3}, Lcom/nut/blehunter/d/k;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nut/blehunter/entity/User;->e:Ljava/lang/String;

    .line 250
    iget-object v1, p0, Lcom/nut/blehunter/ui/MeEditActivity;->c:Lcom/nut/blehunter/ui/widget/CircleImageView;

    iget-object v2, v0, Lcom/nut/blehunter/entity/User;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nut/blehunter/t;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 251
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/nut/blehunter/entity/o;->a(Landroid/content/Context;Lcom/nut/blehunter/entity/User;)V

    goto :goto_0

    .line 226
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_3
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x1a35 -> :sswitch_4
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const v8, 0x7f060083

    const/16 v6, 0x65

    const/16 v3, 0x64

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2491
    :cond_0
    :goto_0
    return-void

    .line 122
    :sswitch_0
    invoke-static {}, Lcom/nut/blehunter/ui/b/a/y;->a()Lcom/nut/blehunter/ui/b/a/y;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/MeEditActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "pick_photo"

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/y;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :sswitch_1
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_0

    .line 131
    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->b:Ljava/lang/String;

    const/16 v1, 0x14

    invoke-static {p0, v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/j;->a(Landroid/content/Context;Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/d;I)Lcom/nut/blehunter/ui/b/a/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/MeEditActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "input_text"

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/j;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :sswitch_2
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    .line 140
    iget v0, v0, Lcom/nut/blehunter/entity/User;->j:I

    invoke-static {p0, v0}, Lcom/nut/blehunter/ui/b/a/ab;->a(Landroid/content/Context;I)Lcom/nut/blehunter/ui/b/a/ab;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/MeEditActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "selectGender"

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/ab;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :sswitch_3
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_0

    .line 149
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 150
    const-class v2, Lcom/nut/blehunter/ui/BindPhoneActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 151
    invoke-virtual {v0}, Lcom/nut/blehunter/entity/User;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    const-string v0, "bind_type"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    :goto_1
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/nut/blehunter/ui/MeEditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 154
    :cond_1
    const-string v0, "bind_type"

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 160
    :sswitch_4
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_0

    .line 164
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 165
    const-class v2, Lcom/nut/blehunter/ui/BindEmailActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 166
    invoke-virtual {v0}, Lcom/nut/blehunter/entity/User;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 167
    const-string v0, "bind_type"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    :cond_2
    :goto_2
    const/4 v0, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/nut/blehunter/ui/MeEditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 168
    :cond_3
    invoke-virtual {v0}, Lcom/nut/blehunter/entity/User;->j()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 169
    const-string v0, "bind_type"

    const/16 v2, 0x66

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 170
    :cond_4
    invoke-virtual {v0}, Lcom/nut/blehunter/entity/User;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    const-string v0, "bind_type"

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 177
    :sswitch_5
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Lcom/nut/blehunter/entity/User;->h()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 182
    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->f:Lcom/nut/blehunter/entity/Wechat;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Wechat;->a:Ljava/lang/String;

    .line 1462
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/MeEditActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1466
    const v1, 0x7f06015f

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/MeEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1467
    new-instance v2, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v2, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 1468
    const v3, 0x7f060168

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/ui/b/a/b;->a(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 1469
    const v3, 0x7f060167

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/nut/blehunter/ui/MeEditActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nut/blehunter/ui/b/a/b;->b(Ljava/lang/String;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1470
    const v1, 0x7f060085

    new-instance v3, Lcom/nut/blehunter/ui/dm;

    invoke-direct {v3, p0, v0}, Lcom/nut/blehunter/ui/dm;-><init>(Lcom/nut/blehunter/ui/MeEditActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1477
    new-instance v0, Lcom/nut/blehunter/ui/dn;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/dn;-><init>(Lcom/nut/blehunter/ui/MeEditActivity;)V

    invoke-virtual {v2, v8, v0}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1483
    invoke-virtual {v2}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v0

    .line 2060
    const-string v1, "baseDialog"

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/a;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2341
    :cond_5
    new-instance v0, Lcom/nut/blehunter/c/b;

    invoke-direct {v0}, Lcom/nut/blehunter/c/b;-><init>()V

    .line 2342
    invoke-static {p0, v4}, Lcom/nut/blehunter/c/b;->a(Landroid/content/Context;I)Lcom/nut/blehunter/c/g;

    move-result-object v0

    .line 2343
    new-instance v1, Lcom/nut/blehunter/ui/dh;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/dh;-><init>(Lcom/nut/blehunter/ui/MeEditActivity;)V

    invoke-interface {v0, v1}, Lcom/nut/blehunter/c/g;->a(Lcom/nut/blehunter/c/a;)Z

    goto/16 :goto_0

    .line 2488
    :sswitch_6
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v2

    .line 2489
    if-nez v2, :cond_6

    .line 2490
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/MeEditActivity;->m()V

    goto/16 :goto_0

    .line 2493
    :cond_6
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/l;->g()Ljava/lang/String;

    move-result-object v3

    .line 2496
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2497
    const v0, 0x7f0600c7

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/MeEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2498
    const v0, 0x7f06008d

    .line 2503
    :goto_3
    new-instance v4, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v4, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 2504
    invoke-virtual {v4, v5}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 2505
    invoke-virtual {v4, v5}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 2506
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/MeEditActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03005f

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nut/blehunter/ui/b/a/b;->a(Landroid/view/View;)Lcom/nut/blehunter/ui/b/a/b;

    .line 2508
    new-instance v5, Lcom/nut/blehunter/ui/do;

    invoke-direct {v5, p0, v2, v3}, Lcom/nut/blehunter/ui/do;-><init>(Lcom/nut/blehunter/ui/MeEditActivity;Lcom/nut/blehunter/entity/User;Ljava/lang/String;)V

    invoke-virtual {v4, v0, v5}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 2519
    const/4 v0, 0x0

    invoke-virtual {v4, v8, v0}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 2521
    iget-object v0, v2, Lcom/nut/blehunter/entity/User;->e:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2, v4}, Lcom/nut/blehunter/ui/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/b;)Lcom/nut/blehunter/ui/b/a/f;

    move-result-object v0

    .line 2524
    const-string v1, "showLogoutDialog"

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/f;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2500
    :cond_7
    const v0, 0x7f0600ba

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v3, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/MeEditActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2501
    const v0, 0x7f06008a

    goto :goto_3

    .line 120
    :sswitch_data_0
    .sparse-switch
        0x7f0d00fe -> :sswitch_0
        0x7f0d00ff -> :sswitch_1
        0x7f0d0103 -> :sswitch_2
        0x7f0d0106 -> :sswitch_3
        0x7f0d0109 -> :sswitch_4
        0x7f0d010d -> :sswitch_5
        0x7f0d0110 -> :sswitch_6
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const v4, 0x7f0d010d

    const v3, 0x7f0d00ff

    const v2, 0x7f0d00fe

    const/4 v1, 0x1

    .line 76
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/MeEditActivity;->setContentView(I)V

    .line 78
    const v0, 0x7f0601df

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/MeEditActivity;->a(I)V

    .line 1084
    invoke-virtual {p0, v2}, Lcom/nut/blehunter/ui/MeEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/widget/CircleImageView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/MeEditActivity;->c:Lcom/nut/blehunter/ui/widget/CircleImageView;

    .line 1085
    invoke-virtual {p0, v3}, Lcom/nut/blehunter/ui/MeEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/MeEditActivity;->d:Landroid/widget/TextView;

    .line 1086
    const v0, 0x7f0d0105

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/MeEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/MeEditActivity;->e:Landroid/widget/TextView;

    .line 1087
    const v0, 0x7f0d0108

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/MeEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/MeEditActivity;->f:Landroid/widget/TextView;

    .line 1088
    const v0, 0x7f0d010c

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/MeEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/MeEditActivity;->g:Landroid/widget/TextView;

    .line 1089
    const v0, 0x7f0d010f

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/MeEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/MeEditActivity;->h:Landroid/widget/TextView;

    .line 1091
    invoke-virtual {p0, v2}, Lcom/nut/blehunter/ui/MeEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1092
    invoke-virtual {p0, v3}, Lcom/nut/blehunter/ui/MeEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1093
    const v0, 0x7f0d0103

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/MeEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1094
    const v0, 0x7f0d0106

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/MeEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1095
    const v0, 0x7f0d0109

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/MeEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1096
    invoke-virtual {p0, v4}, Lcom/nut/blehunter/ui/MeEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1097
    const v0, 0x7f0d0110

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/MeEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1099
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v2

    .line 1101
    const v0, 0x7f0d0102

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/MeEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1102
    if-eqz v2, :cond_1

    iget v3, v2, Lcom/nut/blehunter/entity/User;->r:I

    if-ne v3, v1, :cond_1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1103
    new-instance v1, Lcom/nut/blehunter/ui/dg;

    invoke-direct {v1, p0, v2}, Lcom/nut/blehunter/ui/dg;-><init>(Lcom/nut/blehunter/ui/MeEditActivity;Lcom/nut/blehunter/entity/User;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1112
    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Lcom/nut/blehunter/entity/User;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1113
    invoke-virtual {p0, v4}, Lcom/nut/blehunter/ui/MeEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/MeEditActivity;->c()V

    .line 81
    return-void

    .line 1102
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
