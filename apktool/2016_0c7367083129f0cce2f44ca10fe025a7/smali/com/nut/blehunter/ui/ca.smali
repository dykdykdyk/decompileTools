.class final Lcom/nut/blehunter/ui/ca;
.super Landroid/support/v4/view/PagerAdapter;
.source "LoginActivity.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/nut/blehunter/ui/LoginActivity;

.field private final c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nut/blehunter/ui/LoginActivity;Ljava/util/List;)V
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
    .line 681
    iput-object p1, p0, Lcom/nut/blehunter/ui/ca;->b:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 677
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nut/blehunter/ui/ca;->b:Lcom/nut/blehunter/ui/LoginActivity;

    const v3, 0x7f060196

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/ui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nut/blehunter/ui/ca;->b:Lcom/nut/blehunter/ui/LoginActivity;

    const v3, 0x7f060195

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/ui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/nut/blehunter/ui/ca;->c:[Ljava/lang/String;

    .line 682
    iput-object p2, p0, Lcom/nut/blehunter/ui/ca;->a:Ljava/util/List;

    .line 683
    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/nut/blehunter/ui/ca;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 714
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/nut/blehunter/ui/ca;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/nut/blehunter/ui/ca;->c:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 697
    iget-object v0, p0, Lcom/nut/blehunter/ui/ca;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 699
    iget-object v0, p0, Lcom/nut/blehunter/ui/ca;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 700
    packed-switch p2, :pswitch_data_0

    .line 708
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/ca;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1722
    :pswitch_0
    iget-object v2, p0, Lcom/nut/blehunter/ui/ca;->b:Lcom/nut/blehunter/ui/LoginActivity;

    const v1, 0x7f0d01a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/nut/blehunter/ui/LoginActivity;->a(Lcom/nut/blehunter/ui/LoginActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1723
    iget-object v2, p0, Lcom/nut/blehunter/ui/ca;->b:Lcom/nut/blehunter/ui/LoginActivity;

    const v1, 0x7f0d01a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nut/blehunter/ui/widget/ClearEditText;

    invoke-static {v2, v1}, Lcom/nut/blehunter/ui/LoginActivity;->a(Lcom/nut/blehunter/ui/LoginActivity;Lcom/nut/blehunter/ui/widget/ClearEditText;)Lcom/nut/blehunter/ui/widget/ClearEditText;

    .line 1724
    iget-object v1, p0, Lcom/nut/blehunter/ui/ca;->b:Lcom/nut/blehunter/ui/LoginActivity;

    const v2, 0x7f0d023f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v1, v0}, Lcom/nut/blehunter/ui/LoginActivity;->a(Lcom/nut/blehunter/ui/LoginActivity;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 1726
    iget-object v0, p0, Lcom/nut/blehunter/ui/ca;->b:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/LoginActivity;->c(Lcom/nut/blehunter/ui/LoginActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/ca;->b:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1727
    iget-object v0, p0, Lcom/nut/blehunter/ui/ca;->b:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/LoginActivity;->c(Lcom/nut/blehunter/ui/LoginActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/nut/blehunter/ui/ca;->b:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/LoginActivity;->d(Lcom/nut/blehunter/ui/LoginActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nut/blehunter/ui/ca;->b:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-static {v2}, Lcom/nut/blehunter/ui/LoginActivity;->d(Lcom/nut/blehunter/ui/LoginActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1730
    iget-object v0, p0, Lcom/nut/blehunter/ui/ca;->b:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/LoginActivity;->e(Lcom/nut/blehunter/ui/LoginActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1731
    iget-object v0, p0, Lcom/nut/blehunter/ui/ca;->b:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/LoginActivity;->f(Lcom/nut/blehunter/ui/LoginActivity;)Lcom/nut/blehunter/ui/widget/ClearEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/ca;->b:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/LoginActivity;->e(Lcom/nut/blehunter/ui/LoginActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1734
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/ca;->b:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/LoginActivity;->f(Lcom/nut/blehunter/ui/LoginActivity;)Lcom/nut/blehunter/ui/widget/ClearEditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/widget/ClearEditText;->setSelectAllOnFocus(Z)V

    .line 1735
    iget-object v0, p0, Lcom/nut/blehunter/ui/ca;->b:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/LoginActivity;->f(Lcom/nut/blehunter/ui/LoginActivity;)Lcom/nut/blehunter/ui/widget/ClearEditText;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/cb;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/cb;-><init>(Lcom/nut/blehunter/ui/ca;)V

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/widget/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1754
    iget-object v0, p0, Lcom/nut/blehunter/ui/ca;->b:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/LoginActivity;->f(Lcom/nut/blehunter/ui/LoginActivity;)Lcom/nut/blehunter/ui/widget/ClearEditText;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/cc;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/cc;-><init>(Lcom/nut/blehunter/ui/ca;)V

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/widget/ClearEditText;->setOnClickClearListener(Lcom/nut/blehunter/ui/widget/b;)V

    goto/16 :goto_0

    .line 1727
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/ca;->b:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-static {v0}, Lcom/nut/blehunter/d/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1765
    :pswitch_1
    iget-object v2, p0, Lcom/nut/blehunter/ui/ca;->b:Lcom/nut/blehunter/ui/LoginActivity;

    const v1, 0x7f0d019d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v2, v1}, Lcom/nut/blehunter/ui/LoginActivity;->b(Lcom/nut/blehunter/ui/LoginActivity;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 1766
    iget-object v1, p0, Lcom/nut/blehunter/ui/ca;->b:Lcom/nut/blehunter/ui/LoginActivity;

    const v2, 0x7f0d023e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v1, v0}, Lcom/nut/blehunter/ui/LoginActivity;->c(Lcom/nut/blehunter/ui/LoginActivity;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 1768
    iget-object v0, p0, Lcom/nut/blehunter/ui/ca;->b:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/LoginActivity;->g(Lcom/nut/blehunter/ui/LoginActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1769
    iget-object v0, p0, Lcom/nut/blehunter/ui/ca;->b:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/LoginActivity;->h(Lcom/nut/blehunter/ui/LoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/ca;->b:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/LoginActivity;->g(Lcom/nut/blehunter/ui/LoginActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 700
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 692
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
