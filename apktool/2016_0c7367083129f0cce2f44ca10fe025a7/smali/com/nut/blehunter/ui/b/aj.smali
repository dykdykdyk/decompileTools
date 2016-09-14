.class final Lcom/nut/blehunter/ui/b/aj;
.super Landroid/support/v4/view/PagerAdapter;
.source "NutListFragment.java"


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nut/blehunter/entity/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/nut/blehunter/entity/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 540
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 541
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/aj;->a:Landroid/view/LayoutInflater;

    .line 542
    iput-object p2, p0, Lcom/nut/blehunter/ui/b/aj;->b:Ljava/util/List;

    .line 543
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/b/aj;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/aj;->a:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 569
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 570
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/aj;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/aj;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8

    .prologue
    const v7, 0x7f0201ec

    .line 547
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/aj;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03007f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 548
    const v0, 0x7f0d01bb

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 549
    const v1, 0x7f0d01bc

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 550
    iget-object v2, p0, Lcom/nut/blehunter/ui/b/aj;->b:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nut/blehunter/ui/b/aj;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 551
    iget-object v2, p0, Lcom/nut/blehunter/ui/b/aj;->b:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nut/blehunter/entity/a;

    .line 552
    iget-object v3, v2, Lcom/nut/blehunter/entity/a;->b:Ljava/lang/String;

    .line 1021
    if-eqz v0, :cond_0

    .line 1024
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1025
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 553
    :cond_0
    :goto_0
    iget-object v0, v2, Lcom/nut/blehunter/entity/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 555
    new-instance v0, Lcom/nut/blehunter/ui/b/ak;

    invoke-direct {v0, p0, v2}, Lcom/nut/blehunter/ui/b/ak;-><init>(Lcom/nut/blehunter/ui/b/aj;Lcom/nut/blehunter/entity/a;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 564
    :cond_1
    return-object v4

    .line 1028
    :cond_2
    const-string v5, "http"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1029
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "file://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1031
    :cond_3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 579
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
