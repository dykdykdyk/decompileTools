.class final Landroid/support/v7/view/menu/m;
.super Landroid/widget/BaseAdapter;
.source "ListMenuPresenter.java"


# instance fields
.field final synthetic a:Landroid/support/v7/view/menu/l;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/l;)V
    .locals 1

    .prologue
    .line 227
    iput-object p1, p0, Landroid/support/v7/view/menu/m;->a:Landroid/support/v7/view/menu/l;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 225
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/view/menu/m;->b:I

    .line 228
    invoke-direct {p0}, Landroid/support/v7/view/menu/m;->a()V

    .line 229
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 266
    iget-object v0, p0, Landroid/support/v7/view/menu/m;->a:Landroid/support/v7/view/menu/l;

    iget-object v0, v0, Landroid/support/v7/view/menu/l;->c:Landroid/support/v7/view/menu/o;

    .line 2363
    iget-object v2, v0, Landroid/support/v7/view/menu/o;->j:Landroid/support/v7/view/menu/s;

    .line 267
    if-eqz v2, :cond_1

    .line 268
    iget-object v0, p0, Landroid/support/v7/view/menu/m;->a:Landroid/support/v7/view/menu/l;

    iget-object v0, v0, Landroid/support/v7/view/menu/l;->c:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->j()Ljava/util/ArrayList;

    move-result-object v3

    .line 269
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 270
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 271
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/s;

    .line 272
    if-ne v0, v2, :cond_0

    .line 273
    iput v1, p0, Landroid/support/v7/view/menu/m;->b:I

    .line 279
    :goto_1
    return-void

    .line 270
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 278
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/view/menu/m;->b:I

    goto :goto_1
.end method


# virtual methods
.method public final a(I)Landroid/support/v7/view/menu/s;
    .locals 3

    .prologue
    .line 241
    iget-object v0, p0, Landroid/support/v7/view/menu/m;->a:Landroid/support/v7/view/menu/l;

    iget-object v0, v0, Landroid/support/v7/view/menu/l;->c:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->j()Ljava/util/ArrayList;

    move-result-object v1

    .line 242
    iget-object v0, p0, Landroid/support/v7/view/menu/m;->a:Landroid/support/v7/view/menu/l;

    invoke-static {v0}, Landroid/support/v7/view/menu/l;->a(Landroid/support/v7/view/menu/l;)I

    move-result v0

    add-int/2addr v0, p1

    .line 243
    iget v2, p0, Landroid/support/v7/view/menu/m;->b:I

    if-ltz v2, :cond_0

    iget v2, p0, Landroid/support/v7/view/menu/m;->b:I

    if-lt v0, v2, :cond_0

    .line 244
    add-int/lit8 v0, v0, 0x1

    .line 246
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/s;

    return-object v0
.end method

.method public final getCount()I
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Landroid/support/v7/view/menu/m;->a:Landroid/support/v7/view/menu/l;

    iget-object v0, v0, Landroid/support/v7/view/menu/l;->c:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->j()Ljava/util/ArrayList;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/view/menu/m;->a:Landroid/support/v7/view/menu/l;

    invoke-static {v1}, Landroid/support/v7/view/menu/l;->a(Landroid/support/v7/view/menu/l;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 234
    iget v1, p0, Landroid/support/v7/view/menu/m;->b:I

    if-gez v1, :cond_0

    .line 237
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/m;->a(I)Landroid/support/v7/view/menu/s;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 252
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 256
    if-nez p2, :cond_0

    .line 257
    iget-object v0, p0, Landroid/support/v7/view/menu/m;->a:Landroid/support/v7/view/menu/l;

    iget-object v0, v0, Landroid/support/v7/view/menu/l;->b:Landroid/view/LayoutInflater;

    iget-object v1, p0, Landroid/support/v7/view/menu/m;->a:Landroid/support/v7/view/menu/l;

    iget v1, v1, Landroid/support/v7/view/menu/l;->f:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 260
    check-cast v0, Landroid/support/v7/view/menu/ah;

    .line 261
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/m;->a(I)Landroid/support/v7/view/menu/s;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/support/v7/view/menu/ah;->a(Landroid/support/v7/view/menu/s;)V

    .line 262
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0}, Landroid/support/v7/view/menu/m;->a()V

    .line 284
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 285
    return-void
.end method
