.class final Lcom/nut/blehunter/ui/fc;
.super Landroid/support/v4/view/PagerAdapter;
.source "ResetPasswordActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

.field private final b:[Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nut/blehunter/ui/ResetPasswordActivity;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 386
    iput-object p1, p0, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 382
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    const v3, 0x7f060196

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    const v3, 0x7f060195

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/nut/blehunter/ui/fc;->b:[Ljava/lang/String;

    .line 387
    iput-object p2, p0, Lcom/nut/blehunter/ui/fc;->c:Ljava/util/List;

    .line 388
    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/nut/blehunter/ui/fc;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 425
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/nut/blehunter/ui/fc;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/nut/blehunter/ui/fc;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 407
    iget-object v0, p0, Lcom/nut/blehunter/ui/fc;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 409
    iget-object v0, p0, Lcom/nut/blehunter/ui/fc;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 410
    packed-switch p2, :pswitch_data_0

    .line 419
    :goto_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/fc;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1428
    :pswitch_0
    iget-object v2, p0, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    const v1, 0x7f0d01a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->a(Lcom/nut/blehunter/ui/ResetPasswordActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1429
    iget-object v2, p0, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    const v1, 0x7f0d01a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nut/blehunter/ui/widget/ClearEditText;

    invoke-static {v2, v1}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->a(Lcom/nut/blehunter/ui/ResetPasswordActivity;Lcom/nut/blehunter/ui/widget/ClearEditText;)Lcom/nut/blehunter/ui/widget/ClearEditText;

    .line 1430
    iget-object v2, p0, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    const v1, 0x7f0d01d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v2, v1}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->a(Lcom/nut/blehunter/ui/ResetPasswordActivity;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 1431
    iget-object v2, p0, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    const v1, 0x7f0d023f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v2, v1}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->b(Lcom/nut/blehunter/ui/ResetPasswordActivity;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 1432
    iget-object v2, p0, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    const v1, 0x7f0d01d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->b(Lcom/nut/blehunter/ui/ResetPasswordActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1433
    iget-object v1, p0, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->c(Lcom/nut/blehunter/ui/ResetPasswordActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1434
    iget-object v1, p0, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->d(Lcom/nut/blehunter/ui/ResetPasswordActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1435
    iget-object v1, p0, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->d(Lcom/nut/blehunter/ui/ResetPasswordActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-static {v2}, Lcom/nut/blehunter/d/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1437
    iget-object v1, p0, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    const v2, 0x7f0d01da

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v1, v0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->a(Lcom/nut/blehunter/ui/ResetPasswordActivity;Landroid/widget/Button;)Landroid/widget/Button;

    .line 1438
    iget-object v0, p0, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->a(Lcom/nut/blehunter/ui/ResetPasswordActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1439
    iget-object v0, p0, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->a(Lcom/nut/blehunter/ui/ResetPasswordActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1441
    iget-object v0, p0, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->e(Lcom/nut/blehunter/ui/ResetPasswordActivity;)Lcom/nut/blehunter/ui/widget/ClearEditText;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/fd;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/fd;-><init>(Lcom/nut/blehunter/ui/fc;)V

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/widget/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1466
    iget-object v0, p0, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->i(Lcom/nut/blehunter/ui/ResetPasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1467
    iget-object v0, p0, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->j(Lcom/nut/blehunter/ui/ResetPasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0

    .line 1471
    :pswitch_1
    iget-object v1, p0, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    const v2, 0x7f0d019d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v1, v0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->c(Lcom/nut/blehunter/ui/ResetPasswordActivity;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 1472
    iget-object v0, p0, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->k(Lcom/nut/blehunter/ui/ResetPasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0

    .line 410
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 397
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
