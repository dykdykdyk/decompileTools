.class final Landroid/support/v7/widget/cv;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# instance fields
.field a:I

.field b:I

.field c:Z

.field d:Z

.field final synthetic e:Landroid/support/v7/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/LinearLayoutManager;)V
    .locals 0

    .prologue
    .line 2176
    iput-object p1, p0, Landroid/support/v7/widget/cv;->e:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2177
    invoke-virtual {p0}, Landroid/support/v7/widget/cv;->a()V

    .line 2178
    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2181
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/cv;->a:I

    .line 2182
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/cv;->b:I

    .line 2183
    iput-boolean v1, p0, Landroid/support/v7/widget/cv;->c:Z

    .line 2184
    iput-boolean v1, p0, Landroid/support/v7/widget/cv;->d:Z

    .line 2185
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2261
    iget-boolean v0, p0, Landroid/support/v7/widget/cv;->c:Z

    if-eqz v0, :cond_0

    .line 2262
    iget-object v0, p0, Landroid/support/v7/widget/cv;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/do;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/cv;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 2263
    invoke-virtual {v1}, Landroid/support/v7/widget/do;->a()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/cv;->b:I

    .line 2268
    :goto_0
    invoke-static {p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/cv;->a:I

    .line 2269
    return-void

    .line 2265
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/cv;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/do;->a(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/cv;->b:I

    goto :goto_0
.end method

.method final b()V
    .locals 1

    .prologue
    .line 2192
    iget-boolean v0, p0, Landroid/support/v7/widget/cv;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cv;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 2193
    invoke-virtual {v0}, Landroid/support/v7/widget/do;->c()I

    move-result v0

    .line 2194
    :goto_0
    iput v0, p0, Landroid/support/v7/widget/cv;->b:I

    .line 2195
    return-void

    .line 2193
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/cv;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 2194
    invoke-virtual {v0}, Landroid/support/v7/widget/do;->b()I

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnchorInfo{mPosition="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/support/v7/widget/cv;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/cv;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/cv;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/cv;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
