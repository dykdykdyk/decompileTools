.class public Landroid/support/v7/widget/LinearLayoutManager;
.super Landroid/support/v7/widget/eg;
.source "LinearLayoutManager.java"

# interfaces
.implements Landroid/support/v7/widget/a/m;


# instance fields
.field private a:Landroid/support/v7/widget/cx;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private final f:Landroid/support/v7/widget/cw;

.field public i:I

.field j:Landroid/support/v7/widget/do;

.field public k:Z

.field l:Z

.field m:I

.field n:I

.field o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

.field final p:Landroid/support/v7/widget/cv;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 150
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 159
    invoke-direct {p0}, Landroid/support/v7/widget/eg;-><init>()V

    .line 95
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    .line 102
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    .line 109
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    .line 115
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    .line 127
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 137
    new-instance v0, Landroid/support/v7/widget/cv;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/cv;-><init>(Landroid/support/v7/widget/LinearLayoutManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Landroid/support/v7/widget/cv;

    .line 142
    new-instance v0, Landroid/support/v7/widget/cw;

    invoke-direct {v0}, Landroid/support/v7/widget/cw;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Landroid/support/v7/widget/cw;

    .line 160
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)V

    .line 161
    invoke-direct {p0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->b(Z)V

    .line 11588
    iput-boolean v1, p0, Landroid/support/v7/widget/eg;->v:Z

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 174
    invoke-direct {p0}, Landroid/support/v7/widget/eg;-><init>()V

    .line 95
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    .line 102
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    .line 109
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    .line 115
    iput-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    .line 127
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 137
    new-instance v0, Landroid/support/v7/widget/cv;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/cv;-><init>(Landroid/support/v7/widget/LinearLayoutManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Landroid/support/v7/widget/cv;

    .line 142
    new-instance v0, Landroid/support/v7/widget/cw;

    invoke-direct {v0}, Landroid/support/v7/widget/cw;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Landroid/support/v7/widget/cw;

    .line 175
    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/eh;

    move-result-object v0

    .line 176
    iget v1, v0, Landroid/support/v7/widget/eh;->a:I

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)V

    .line 177
    iget-boolean v1, v0, Landroid/support/v7/widget/eh;->c:Z

    invoke-direct {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(Z)V

    .line 178
    iget-boolean v0, v0, Landroid/support/v7/widget/eh;->d:Z

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Z)V

    .line 12588
    iput-boolean v2, p0, Landroid/support/v7/widget/eg;->v:Z

    .line 180
    return-void
.end method

.method private a(ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;Z)I
    .locals 3

    .prologue
    .line 873
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v0}, Landroid/support/v7/widget/do;->c()I

    move-result v0

    sub-int/2addr v0, p1

    .line 875
    if-lez v0, :cond_1

    .line 876
    neg-int v0, v0

    invoke-direct {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)I

    move-result v0

    neg-int v0, v0

    .line 881
    add-int v1, p1, v0

    .line 882
    if-eqz p4, :cond_0

    .line 884
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v2}, Landroid/support/v7/widget/do;->c()I

    move-result v2

    sub-int v1, v2, v1

    .line 885
    if-lez v1, :cond_0

    .line 886
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/do;->a(I)V

    .line 887
    add-int/2addr v0, v1

    .line 890
    :cond_0
    :goto_0
    return v0

    .line 878
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/cx;Landroid/support/v7/widget/eu;Z)I
    .locals 8

    .prologue
    const/high16 v7, -0x80000000

    const/4 v6, 0x0

    .line 1365
    iget v1, p2, Landroid/support/v7/widget/cx;->c:I

    .line 1366
    iget v0, p2, Landroid/support/v7/widget/cx;->g:I

    if-eq v0, v7, :cond_1

    .line 1368
    iget v0, p2, Landroid/support/v7/widget/cx;->c:I

    if-gez v0, :cond_0

    .line 1369
    iget v0, p2, Landroid/support/v7/widget/cx;->g:I

    iget v2, p2, Landroid/support/v7/widget/cx;->c:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/cx;->g:I

    .line 1371
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/cx;)V

    .line 1373
    :cond_1
    iget v0, p2, Landroid/support/v7/widget/cx;->c:I

    iget v2, p2, Landroid/support/v7/widget/cx;->h:I

    add-int/2addr v0, v2

    .line 1374
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Landroid/support/v7/widget/cw;

    .line 1375
    :cond_2
    iget-boolean v3, p2, Landroid/support/v7/widget/cx;->l:Z

    if-nez v3, :cond_3

    if-lez v0, :cond_8

    :cond_3
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/cx;->a(Landroid/support/v7/widget/eu;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 31279
    iput v6, v2, Landroid/support/v7/widget/cw;->a:I

    .line 31280
    iput-boolean v6, v2, Landroid/support/v7/widget/cw;->b:Z

    .line 31281
    iput-boolean v6, v2, Landroid/support/v7/widget/cw;->c:Z

    .line 31282
    iput-boolean v6, v2, Landroid/support/v7/widget/cw;->d:Z

    .line 1377
    invoke-virtual {p0, p1, p3, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;Landroid/support/v7/widget/cx;Landroid/support/v7/widget/cw;)V

    .line 1378
    iget-boolean v3, v2, Landroid/support/v7/widget/cw;->b:Z

    if-nez v3, :cond_8

    .line 1381
    iget v3, p2, Landroid/support/v7/widget/cx;->b:I

    iget v4, v2, Landroid/support/v7/widget/cw;->a:I

    iget v5, p2, Landroid/support/v7/widget/cx;->f:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/cx;->b:I

    .line 1388
    iget-boolean v3, v2, Landroid/support/v7/widget/cw;->c:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget-object v3, v3, Landroid/support/v7/widget/cx;->k:Ljava/util/List;

    if-nez v3, :cond_4

    .line 31646
    iget-boolean v3, p3, Landroid/support/v7/widget/eu;->g:Z

    .line 1389
    if-nez v3, :cond_5

    .line 1390
    :cond_4
    iget v3, p2, Landroid/support/v7/widget/cx;->c:I

    iget v4, v2, Landroid/support/v7/widget/cw;->a:I

    sub-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/cx;->c:I

    .line 1392
    iget v3, v2, Landroid/support/v7/widget/cw;->a:I

    sub-int/2addr v0, v3

    .line 1395
    :cond_5
    iget v3, p2, Landroid/support/v7/widget/cx;->g:I

    if-eq v3, v7, :cond_7

    .line 1396
    iget v3, p2, Landroid/support/v7/widget/cx;->g:I

    iget v4, v2, Landroid/support/v7/widget/cw;->a:I

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/cx;->g:I

    .line 1397
    iget v3, p2, Landroid/support/v7/widget/cx;->c:I

    if-gez v3, :cond_6

    .line 1398
    iget v3, p2, Landroid/support/v7/widget/cx;->g:I

    iget v4, p2, Landroid/support/v7/widget/cx;->c:I

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/cx;->g:I

    .line 1400
    :cond_6
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/cx;)V

    .line 1402
    :cond_7
    if-eqz p4, :cond_2

    iget-boolean v3, v2, Landroid/support/v7/widget/cw;->d:Z

    if-eqz v3, :cond_2

    .line 1409
    :cond_8
    iget v0, p2, Landroid/support/v7/widget/cx;->c:I

    sub-int v0, v1, v0

    return v0
.end method

.method private a(IIZ)Landroid/view/View;
    .locals 7

    .prologue
    .line 1751
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()V

    .line 1752
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v0}, Landroid/support/v7/widget/do;->b()I

    move-result v3

    .line 1753
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v0}, Landroid/support/v7/widget/do;->c()I

    move-result v4

    .line 1754
    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    .line 1755
    :goto_0
    const/4 v2, 0x0

    .line 1756
    :goto_1
    if-eq p1, p2, :cond_3

    .line 1757
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->f(I)Landroid/view/View;

    move-result-object v1

    .line 1758
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/do;->a(Landroid/view/View;)I

    move-result v5

    .line 1759
    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v6, v1}, Landroid/support/v7/widget/do;->b(Landroid/view/View;)I

    move-result v6

    .line 1760
    if-ge v5, v4, :cond_4

    if-le v6, v3, :cond_4

    .line 1761
    if-eqz p3, :cond_0

    .line 1762
    if-lt v5, v3, :cond_2

    if-gt v6, v4, :cond_2

    .line 1772
    :cond_0
    :goto_2
    return-object v1

    .line 1754
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 1764
    :cond_2
    if-nez v2, :cond_4

    .line 1756
    :goto_3
    add-int/2addr p1, v0

    move-object v2, v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    .line 1772
    goto :goto_2

    :cond_4
    move-object v1, v2

    goto :goto_3
.end method

.method private a(IIZLandroid/support/v7/widget/eu;)V
    .locals 6

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 1144
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->s()Z

    move-result v3

    iput-boolean v3, v2, Landroid/support/v7/widget/cx;->l:Z

    .line 1145
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    invoke-direct {p0, p4}, Landroid/support/v7/widget/LinearLayoutManager;->h(Landroid/support/v7/widget/eu;)I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/cx;->h:I

    .line 1146
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iput p1, v2, Landroid/support/v7/widget/cx;->f:I

    .line 1148
    if-ne p1, v1, :cond_2

    .line 1149
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget v3, v2, Landroid/support/v7/widget/cx;->h:I

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v4}, Landroid/support/v7/widget/do;->f()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/cx;->h:I

    .line 1151
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()Landroid/view/View;

    move-result-object v2

    .line 1153
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    if-eqz v4, :cond_1

    :goto_0
    iput v0, v3, Landroid/support/v7/widget/cx;->e:I

    .line 1155
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    invoke-static {v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget v3, v3, Landroid/support/v7/widget/cx;->e:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/cx;->d:I

    .line 1156
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/do;->b(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/cx;->b:I

    .line 1158
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/do;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 1159
    invoke-virtual {v1}, Landroid/support/v7/widget/do;->c()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1171
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iput p2, v1, Landroid/support/v7/widget/cx;->c:I

    .line 1172
    if-eqz p3, :cond_0

    .line 1173
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget v2, v1, Landroid/support/v7/widget/cx;->c:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/support/v7/widget/cx;->c:I

    .line 1175
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iput v0, v1, Landroid/support/v7/widget/cx;->g:I

    .line 1176
    return-void

    :cond_1
    move v0, v1

    .line 1153
    goto :goto_0

    .line 1162
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->t()Landroid/view/View;

    move-result-object v2

    .line 1163
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget v4, v3, Landroid/support/v7/widget/cx;->h:I

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v5}, Landroid/support/v7/widget/do;->b()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/cx;->h:I

    .line 1164
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    if-eqz v4, :cond_3

    :goto_2
    iput v1, v3, Landroid/support/v7/widget/cx;->e:I

    .line 1166
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    invoke-static {v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget v3, v3, Landroid/support/v7/widget/cx;->e:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/cx;->d:I

    .line 1167
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/do;->a(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/cx;->b:I

    .line 1168
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/do;->a(Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 1169
    invoke-virtual {v1}, Landroid/support/v7/widget/do;->b()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_3
    move v1, v0

    .line 1164
    goto :goto_2
.end method

.method private a(Landroid/support/v7/widget/cv;)V
    .locals 2

    .prologue
    .line 919
    iget v0, p1, Landroid/support/v7/widget/cv;->a:I

    iget v1, p1, Landroid/support/v7/widget/cv;->b:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->i(II)V

    .line 920
    return-void
.end method

.method private a(Landroid/support/v7/widget/eo;II)V
    .locals 1

    .prologue
    .line 1223
    if-ne p2, p3, :cond_1

    .line 1238
    :cond_0
    return-void

    .line 1229
    :cond_1
    if-le p3, p2, :cond_2

    .line 1230
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_0

    .line 1231
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/eo;)V

    .line 1230
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1234
    :cond_2
    :goto_1
    if-le p2, p3, :cond_0

    .line 1235
    invoke-virtual {p0, p2, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/eo;)V

    .line 1234
    add-int/lit8 p2, p2, -0x1

    goto :goto_1
.end method

.method private a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/cx;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1341
    iget-boolean v0, p2, Landroid/support/v7/widget/cx;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroid/support/v7/widget/cx;->l:Z

    if-eqz v0, :cond_1

    .line 30278
    :cond_0
    :goto_0
    return-void

    .line 1344
    :cond_1
    iget v0, p2, Landroid/support/v7/widget/cx;->f:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    .line 1345
    iget v0, p2, Landroid/support/v7/widget/cx;->g:I

    .line 29296
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v2

    .line 29297
    if-ltz v0, :cond_0

    .line 29304
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v3}, Landroid/support/v7/widget/do;->d()I

    move-result v3

    sub-int/2addr v3, v0

    .line 29305
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    if-eqz v0, :cond_4

    move v0, v1

    .line 29306
    :goto_1
    if-ge v0, v2, :cond_0

    .line 29307
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->f(I)Landroid/view/View;

    move-result-object v4

    .line 29308
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/do;->a(Landroid/view/View;)I

    move-result v5

    if-lt v5, v3, :cond_2

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 29309
    invoke-virtual {v5, v4}, Landroid/support/v7/widget/do;->d(Landroid/view/View;)I

    move-result v4

    if-ge v4, v3, :cond_3

    .line 29311
    :cond_2
    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/eo;II)V

    goto :goto_0

    .line 29306
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 29316
    :cond_4
    add-int/lit8 v0, v2, -0x1

    :goto_2
    if-ltz v0, :cond_0

    .line 29317
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->f(I)Landroid/view/View;

    move-result-object v1

    .line 29318
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/do;->a(Landroid/view/View;)I

    move-result v4

    if-lt v4, v3, :cond_5

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 29319
    invoke-virtual {v4, v1}, Landroid/support/v7/widget/do;->d(Landroid/view/View;)I

    move-result v1

    if-ge v1, v3, :cond_6

    .line 29321
    :cond_5
    add-int/lit8 v1, v2, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/eo;II)V

    goto :goto_0

    .line 29316
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1347
    :cond_7
    iget v2, p2, Landroid/support/v7/widget/cx;->g:I

    .line 30251
    if-ltz v2, :cond_0

    .line 30260
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v3

    .line 30261
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    if-eqz v0, :cond_a

    .line 30262
    add-int/lit8 v0, v3, -0x1

    :goto_3
    if-ltz v0, :cond_0

    .line 30263
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->f(I)Landroid/view/View;

    move-result-object v1

    .line 30264
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/do;->b(Landroid/view/View;)I

    move-result v4

    if-gt v4, v2, :cond_8

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 30265
    invoke-virtual {v4, v1}, Landroid/support/v7/widget/do;->c(Landroid/view/View;)I

    move-result v1

    if-le v1, v2, :cond_9

    .line 30267
    :cond_8
    add-int/lit8 v1, v3, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/eo;II)V

    goto/16 :goto_0

    .line 30262
    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_a
    move v0, v1

    .line 30272
    :goto_4
    if-ge v0, v3, :cond_0

    .line 30273
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->f(I)Landroid/view/View;

    move-result-object v4

    .line 30274
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/do;->b(Landroid/view/View;)I

    move-result v5

    if-gt v5, v2, :cond_b

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 30275
    invoke-virtual {v5, v4}, Landroid/support/v7/widget/do;->c(Landroid/view/View;)I

    move-result v4

    if-le v4, v2, :cond_c

    .line 30277
    :cond_b
    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/eo;II)V

    goto/16 :goto_0

    .line 30272
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private b(ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;Z)I
    .locals 4

    .prologue
    .line 898
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v0}, Landroid/support/v7/widget/do;->b()I

    move-result v0

    sub-int v0, p1, v0

    .line 900
    if-lez v0, :cond_1

    .line 902
    invoke-direct {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)I

    move-result v0

    neg-int v0, v0

    .line 906
    add-int v1, p1, v0

    .line 907
    if-eqz p4, :cond_0

    .line 909
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v2}, Landroid/support/v7/widget/do;->b()I

    move-result v2

    sub-int/2addr v1, v2

    .line 910
    if-lez v1, :cond_0

    .line 911
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/do;->a(I)V

    .line 912
    sub-int/2addr v0, v1

    .line 915
    :cond_0
    :goto_0
    return v0

    .line 904
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/support/v7/widget/cv;)V
    .locals 2

    .prologue
    .line 933
    iget v0, p1, Landroid/support/v7/widget/cv;->a:I

    iget v1, p1, Landroid/support/v7/widget/cv;->b:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->j(II)V

    .line 934
    return-void
.end method

.method private b(Z)V
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    .line 380
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-ne p1, v0, :cond_0

    .line 385
    :goto_0
    return-void

    .line 383
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    .line 384
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->j()V

    goto :goto_0
.end method

.method private c(ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1184
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move p1, v2

    .line 1206
    :goto_0
    return p1

    .line 1187
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iput-boolean v1, v0, Landroid/support/v7/widget/cx;->a:Z

    .line 1188
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()V

    .line 1189
    if-lez p1, :cond_2

    move v0, v1

    .line 1190
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1191
    invoke-direct {p0, v0, v3, v1, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZLandroid/support/v7/widget/eu;)V

    .line 1192
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget v1, v1, Landroid/support/v7/widget/cx;->g:I

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    .line 1193
    invoke-direct {p0, p2, v4, p3, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/cx;Landroid/support/v7/widget/eu;Z)I

    move-result v4

    add-int/2addr v1, v4

    .line 1194
    if-gez v1, :cond_3

    move p1, v2

    .line 1198
    goto :goto_0

    .line 1189
    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    .line 1200
    :cond_3
    if-le v3, v1, :cond_4

    mul-int p1, v0, v1

    .line 1201
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/do;->a(I)V

    .line 1205
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iput p1, v0, Landroid/support/v7/widget/cx;->j:I

    goto :goto_0
.end method

.method private c(Z)Landroid/view/View;
    .locals 2

    .prologue
    .line 1570
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    if-eqz v0, :cond_0

    .line 1571
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZ)Landroid/view/View;

    move-result-object v0

    .line 1574
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private d(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1610
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->f(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)Landroid/view/View;

    move-result-object v0

    .line 1611
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->g(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private d(Z)Landroid/view/View;
    .locals 2

    .prologue
    .line 1588
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    if-eqz v0, :cond_0

    .line 1589
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZ)Landroid/view/View;

    move-result-object v0

    .line 1592
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private e(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1627
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->g(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)Landroid/view/View;

    move-result-object v0

    .line 1628
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->f(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private f(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)Landroid/view/View;
    .locals 6

    .prologue
    .line 1632
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v4

    invoke-virtual {p2}, Landroid/support/v7/widget/eu;->a()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private g(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)Landroid/view/View;
    .locals 6

    .prologue
    .line 1636
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    const/4 v4, -0x1

    invoke-virtual {p2}, Landroid/support/v7/widget/eu;->a()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private h(Landroid/support/v7/widget/eu;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 421
    .line 13730
    iget v1, p1, Landroid/support/v7/widget/eu;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    .line 421
    :goto_0
    if-eqz v1, :cond_0

    .line 422
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v0}, Landroid/support/v7/widget/do;->e()I

    move-result v0

    .line 424
    :cond_0
    return v0

    :cond_1
    move v1, v0

    .line 13730
    goto :goto_0
.end method

.method private i(Landroid/support/v7/widget/eu;)I
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1077
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    if-nez v0, :cond_0

    .line 1081
    :goto_0
    return v4

    .line 1080
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()V

    .line 1081
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    if-nez v0, :cond_1

    move v0, v3

    .line 1082
    :goto_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    if-nez v0, :cond_2

    .line 1083
    :goto_2
    invoke-direct {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->d(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    move-object v0, p1

    move-object v4, p0

    .line 1081
    invoke-static/range {v0 .. v6}, Landroid/support/v7/widget/fc;->a(Landroid/support/v7/widget/eu;Landroid/support/v7/widget/do;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/eg;ZZ)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    .line 1082
    goto :goto_2
.end method

.method private i(II)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 923
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v2}, Landroid/support/v7/widget/do;->c()I

    move-result v2

    sub-int/2addr v2, p2

    iput v2, v0, Landroid/support/v7/widget/cx;->c:I

    .line 924
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, v2, Landroid/support/v7/widget/cx;->e:I

    .line 926
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iput p1, v0, Landroid/support/v7/widget/cx;->d:I

    .line 927
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iput v1, v0, Landroid/support/v7/widget/cx;->f:I

    .line 928
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iput p2, v0, Landroid/support/v7/widget/cx;->b:I

    .line 929
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/cx;->g:I

    .line 930
    return-void

    :cond_0
    move v0, v1

    .line 924
    goto :goto_0
.end method

.method private j(Landroid/support/v7/widget/eu;)I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1088
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    if-nez v0, :cond_0

    .line 1092
    :goto_0
    return v4

    .line 1091
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()V

    .line 1092
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    if-nez v0, :cond_1

    move v0, v3

    .line 1093
    :goto_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    if-nez v0, :cond_2

    .line 1094
    :goto_2
    invoke-direct {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->d(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    move-object v0, p1

    move-object v4, p0

    .line 1092
    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/fc;->a(Landroid/support/v7/widget/eu;Landroid/support/v7/widget/do;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/eg;Z)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    .line 1093
    goto :goto_2
.end method

.method private j(II)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 937
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v2}, Landroid/support/v7/widget/do;->b()I

    move-result v2

    sub-int v2, p2, v2

    iput v2, v0, Landroid/support/v7/widget/cx;->c:I

    .line 938
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iput p1, v0, Landroid/support/v7/widget/cx;->d:I

    .line 939
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v2, Landroid/support/v7/widget/cx;->e:I

    .line 941
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iput v1, v0, Landroid/support/v7/widget/cx;->f:I

    .line 942
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iput p2, v0, Landroid/support/v7/widget/cx;->b:I

    .line 943
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/cx;->g:I

    .line 945
    return-void

    :cond_0
    move v0, v1

    .line 939
    goto :goto_0
.end method

.method private k(Landroid/support/v7/widget/eu;)I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1099
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    if-nez v0, :cond_0

    .line 1103
    :goto_0
    return v4

    .line 1102
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()V

    .line 1103
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    if-nez v0, :cond_1

    move v0, v3

    .line 1104
    :goto_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    if-nez v0, :cond_2

    .line 1105
    :goto_2
    invoke-direct {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->d(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    move-object v0, p1

    move-object v4, p0

    .line 1103
    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/fc;->b(Landroid/support/v7/widget/eu;Landroid/support/v7/widget/do;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/eg;Z)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    .line 1104
    goto :goto_2
.end method

.method private k(II)V
    .locals 2

    .prologue
    .line 1013
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    .line 1014
    iput p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    .line 1015
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 29138
    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    .line 1018
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->j()V

    .line 1019
    return-void
.end method

.method private r()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 347
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()Z

    move-result v1

    if-nez v1, :cond_2

    .line 348
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    .line 350
    :cond_1
    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    .line 352
    return-void

    .line 350
    :cond_2
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private s()Z
    .locals 1

    .prologue
    .line 1179
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v0}, Landroid/support/v7/widget/do;->g()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 1180
    invoke-virtual {v0}, Landroid/support/v7/widget/do;->d()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private t()Landroid/view/View;
    .locals 1

    .prologue
    .line 1548
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->f(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private u()Landroid/view/View;
    .locals 1

    .prologue
    .line 1558
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->f(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public a(ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)I
    .locals 2

    .prologue
    .line 1028
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1029
    const/4 v0, 0x0

    .line 1031
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)I

    move-result v0

    goto :goto_0
.end method

.method a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;III)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1642
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()V

    .line 1645
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v0}, Landroid/support/v7/widget/do;->b()I

    move-result v5

    .line 1646
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v0}, Landroid/support/v7/widget/do;->c()I

    move-result v6

    .line 1647
    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    move-object v4, v2

    .line 1648
    :goto_1
    if-eq p3, p4, :cond_3

    .line 1649
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->f(I)Landroid/view/View;

    move-result-object v3

    .line 1650
    invoke-static {v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    .line 1651
    if-ltz v0, :cond_6

    if-ge v0, p5, :cond_6

    .line 1652
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ei;

    .line 41919
    iget-object v0, v0, Landroid/support/v7/widget/ei;->c:Landroid/support/v7/widget/ex;

    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->m()Z

    move-result v0

    .line 1652
    if-eqz v0, :cond_1

    .line 1653
    if-nez v4, :cond_6

    move-object v0, v2

    .line 1648
    :goto_2
    add-int/2addr p3, v1

    move-object v2, v0

    move-object v4, v3

    goto :goto_1

    .line 1647
    :cond_0
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    .line 1656
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/do;->a(Landroid/view/View;)I

    move-result v0

    if-ge v0, v6, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 1657
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/do;->b(Landroid/view/View;)I

    move-result v0

    if-ge v0, v5, :cond_4

    .line 1658
    :cond_2
    if-nez v2, :cond_6

    move-object v0, v3

    move-object v3, v4

    .line 1659
    goto :goto_2

    .line 1666
    :cond_3
    if-eqz v2, :cond_5

    move-object v3, v2

    :cond_4
    :goto_3
    return-object v3

    :cond_5
    move-object v3, v4

    goto :goto_3

    :cond_6
    move-object v0, v2

    move-object v3, v4

    goto :goto_2
.end method

.method public a(Landroid/view/View;ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/high16 v5, -0x80000000

    const/4 v0, 0x0

    .line 1778
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->r()V

    .line 1779
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v1

    if-nez v1, :cond_1

    .line 1816
    :cond_0
    :goto_0
    return-object v0

    .line 1783
    :cond_1
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->e(I)I

    move-result v3

    .line 1784
    if-eq v3, v5, :cond_0

    .line 1787
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()V

    .line 1789
    if-ne v3, v6, :cond_2

    .line 1790
    invoke-direct {p0, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->e(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1794
    :goto_1
    if-eqz v2, :cond_0

    .line 1801
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()V

    .line 1802
    const v1, 0x3eaaaaab

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v4}, Landroid/support/v7/widget/do;->e()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 1803
    invoke-direct {p0, v3, v1, v7, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZLandroid/support/v7/widget/eu;)V

    .line 1804
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iput v5, v1, Landroid/support/v7/widget/cx;->g:I

    .line 1805
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iput-boolean v7, v1, Landroid/support/v7/widget/cx;->a:Z

    .line 1806
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    const/4 v4, 0x1

    invoke-direct {p0, p3, v1, p4, v4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/cx;Landroid/support/v7/widget/eu;Z)I

    .line 1808
    if-ne v3, v6, :cond_3

    .line 1809
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->t()Landroid/view/View;

    move-result-object v1

    .line 1813
    :goto_2
    if-eq v1, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1816
    goto :goto_0

    .line 1792
    :cond_2
    invoke-direct {p0, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    .line 1811
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()Landroid/view/View;

    move-result-object v1

    goto :goto_2
.end method

.method public final a(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 268
    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 269
    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 270
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->j()V

    .line 277
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/eo;)V
    .locals 1

    .prologue
    .line 221
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/eg;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/eo;)V

    .line 222
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->c(Landroid/support/v7/widget/eo;)V

    .line 224
    invoke-virtual {p2}, Landroid/support/v7/widget/eo;->a()V

    .line 226
    :cond_0
    return-void
.end method

.method a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;Landroid/support/v7/widget/cv;I)V
    .locals 0

    .prologue
    .line 656
    return-void
.end method

.method a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;Landroid/support/v7/widget/cx;Landroid/support/v7/widget/cw;)V
    .locals 10

    .prologue
    .line 1414
    invoke-virtual {p3, p1}, Landroid/support/v7/widget/cx;->a(Landroid/support/v7/widget/eo;)Landroid/view/View;

    move-result-object v5

    .line 1415
    if-nez v5, :cond_0

    .line 1421
    const/4 v0, 0x1

    iput-boolean v0, p4, Landroid/support/v7/widget/cw;->b:Z

    .line 1483
    :goto_0
    return-void

    .line 1424
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ei;

    .line 1425
    iget-object v1, p3, Landroid/support/v7/widget/cx;->k:Ljava/util/List;

    if-nez v1, :cond_6

    .line 1426
    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    iget v1, p3, Landroid/support/v7/widget/cx;->f:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    :goto_1
    if-ne v2, v1, :cond_5

    .line 32070
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-super {p0, v5, v1, v2}, Landroid/support/v7/widget/eg;->a(Landroid/view/View;IZ)V

    .line 35856
    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ei;

    .line 35858
    iget-object v2, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 35859
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x0

    .line 35860
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x0

    .line 36487
    iget v4, p0, Landroid/support/v7/widget/eg;->z:I

    .line 37460
    iget v6, p0, Landroid/support/v7/widget/eg;->x:I

    .line 35863
    invoke-virtual {p0}, Landroid/support/v7/widget/eg;->m()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v7/widget/eg;->o()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v1, Landroid/support/v7/widget/ei;->leftMargin:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/support/v7/widget/ei;->rightMargin:I

    add-int/2addr v7, v8

    add-int/2addr v3, v7

    iget v7, v1, Landroid/support/v7/widget/ei;->width:I

    .line 35865
    invoke-virtual {p0}, Landroid/support/v7/widget/eg;->e()Z

    move-result v8

    .line 35862
    invoke-static {v4, v6, v3, v7, v8}, Landroid/support/v7/widget/eg;->a(IIIIZ)I

    move-result v3

    .line 37496
    iget v4, p0, Landroid/support/v7/widget/eg;->A:I

    .line 38478
    iget v6, p0, Landroid/support/v7/widget/eg;->y:I

    .line 35867
    invoke-virtual {p0}, Landroid/support/v7/widget/eg;->n()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v7/widget/eg;->p()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v1, Landroid/support/v7/widget/ei;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/support/v7/widget/ei;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v2, v7

    iget v7, v1, Landroid/support/v7/widget/ei;->height:I

    .line 35869
    invoke-virtual {p0}, Landroid/support/v7/widget/eg;->f()Z

    move-result v8

    .line 35866
    invoke-static {v4, v6, v2, v7, v8}, Landroid/support/v7/widget/eg;->a(IIIIZ)I

    move-result v2

    .line 35870
    invoke-virtual {p0, v5, v3, v2, v1}, Landroid/support/v7/widget/eg;->a(Landroid/view/View;IILandroid/support/v7/widget/ei;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35871
    invoke-virtual {v5, v3, v2}, Landroid/view/View;->measure(II)V

    .line 1441
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/do;->e(Landroid/view/View;)I

    move-result v1

    iput v1, p4, Landroid/support/v7/widget/cw;->a:I

    .line 1443
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    .line 1444
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 38487
    iget v1, p0, Landroid/support/v7/widget/eg;->z:I

    .line 1445
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->o()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1446
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/do;->f(Landroid/view/View;)I

    move-result v2

    sub-int v2, v1, v2

    .line 1451
    :goto_3
    iget v3, p3, Landroid/support/v7/widget/cx;->f:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_a

    .line 1452
    iget v3, p3, Landroid/support/v7/widget/cx;->b:I

    .line 1453
    iget v4, p3, Landroid/support/v7/widget/cx;->b:I

    iget v6, p4, Landroid/support/v7/widget/cw;->a:I

    sub-int/2addr v4, v6

    move v9, v3

    move v3, v4

    move v4, v2

    move v2, v1

    move v1, v9

    .line 1472
    :goto_4
    invoke-static {v5, v4, v3, v2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;IIII)V

    .line 38919
    iget-object v1, v0, Landroid/support/v7/widget/ei;->c:Landroid/support/v7/widget/ex;

    invoke-virtual {v1}, Landroid/support/v7/widget/ex;->m()Z

    move-result v1

    .line 1479
    if-nez v1, :cond_2

    .line 38930
    iget-object v0, v0, Landroid/support/v7/widget/ei;->c:Landroid/support/v7/widget/ex;

    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->s()Z

    move-result v0

    .line 1479
    if-eqz v0, :cond_3

    .line 1480
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p4, Landroid/support/v7/widget/cw;->c:Z

    .line 1482
    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->isFocusable()Z

    move-result v0

    iput-boolean v0, p4, Landroid/support/v7/widget/cw;->d:Z

    goto/16 :goto_0

    .line 1426
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 33070
    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-super {p0, v5, v1, v2}, Landroid/support/v7/widget/eg;->a(Landroid/view/View;IZ)V

    goto/16 :goto_2

    .line 1433
    :cond_6
    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    iget v1, p3, Landroid/support/v7/widget/cx;->f:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_7

    const/4 v1, 0x1

    :goto_5
    if-ne v2, v1, :cond_8

    .line 34047
    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-super {p0, v5, v1, v2}, Landroid/support/v7/widget/eg;->a(Landroid/view/View;IZ)V

    goto/16 :goto_2

    .line 1433
    :cond_7
    const/4 v1, 0x0

    goto :goto_5

    .line 35047
    :cond_8
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-super {p0, v5, v1, v2}, Landroid/support/v7/widget/eg;->a(Landroid/view/View;IZ)V

    goto/16 :goto_2

    .line 1448
    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->m()I

    move-result v2

    .line 1449
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/do;->f(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v2

    goto :goto_3

    .line 1455
    :cond_a
    iget v4, p3, Landroid/support/v7/widget/cx;->b:I

    .line 1456
    iget v3, p3, Landroid/support/v7/widget/cx;->b:I

    iget v6, p4, Landroid/support/v7/widget/cw;->a:I

    add-int/2addr v3, v6

    move v9, v3

    move v3, v4

    move v4, v2

    move v2, v1

    move v1, v9

    goto :goto_4

    .line 1459
    :cond_b
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->n()I

    move-result v3

    .line 1460
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/do;->f(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v3

    .line 1462
    iget v2, p3, Landroid/support/v7/widget/cx;->f:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_c

    .line 1463
    iget v2, p3, Landroid/support/v7/widget/cx;->b:I

    .line 1464
    iget v4, p3, Landroid/support/v7/widget/cx;->b:I

    iget v6, p4, Landroid/support/v7/widget/cw;->a:I

    sub-int/2addr v4, v6

    goto :goto_4

    .line 1466
    :cond_c
    iget v4, p3, Landroid/support/v7/widget/cx;->b:I

    .line 1467
    iget v2, p3, Landroid/support/v7/widget/cx;->b:I

    iget v6, p4, Landroid/support/v7/widget/cw;->a:I

    add-int/2addr v2, v6

    goto :goto_4
.end method

.method public a(Landroid/support/v7/widget/eu;)V
    .locals 1

    .prologue
    .line 638
    invoke-super {p0, p1}, Landroid/support/v7/widget/eg;->a(Landroid/support/v7/widget/eu;)V

    .line 639
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 640
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    .line 641
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    .line 642
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Landroid/support/v7/widget/cv;

    invoke-virtual {v0}, Landroid/support/v7/widget/cv;->a()V

    .line 643
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 1893
    const-string v0, "Cannot drop a view during a scroll or layout calculation"

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    .line 1894
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()V

    .line 1895
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->r()V

    .line 1896
    invoke-static {p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    .line 1897
    invoke-static {p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v3

    .line 1898
    if-ge v0, v3, :cond_0

    move v0, v1

    .line 1900
    :goto_0
    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    if-eqz v4, :cond_2

    .line 1901
    if-ne v0, v1, :cond_1

    .line 1902
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 1903
    invoke-virtual {v0}, Landroid/support/v7/widget/do;->c()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 1904
    invoke-virtual {v1, p2}, Landroid/support/v7/widget/do;->a(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 1905
    invoke-virtual {v2, p1}, Landroid/support/v7/widget/do;->e(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 1902
    invoke-direct {p0, v3, v0}, Landroid/support/v7/widget/LinearLayoutManager;->k(II)V

    .line 1920
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 1898
    goto :goto_0

    .line 1907
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 1908
    invoke-virtual {v0}, Landroid/support/v7/widget/do;->c()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 1909
    invoke-virtual {v1, p2}, Landroid/support/v7/widget/do;->b(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1907
    invoke-direct {p0, v3, v0}, Landroid/support/v7/widget/LinearLayoutManager;->k(II)V

    goto :goto_1

    .line 1912
    :cond_2
    if-ne v0, v2, :cond_3

    .line 1913
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/do;->a(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v3, v0}, Landroid/support/v7/widget/LinearLayoutManager;->k(II)V

    goto :goto_1

    .line 1915
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 1916
    invoke-virtual {v0, p2}, Landroid/support/v7/widget/do;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 1917
    invoke-virtual {v1, p1}, Landroid/support/v7/widget/do;->e(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1915
    invoke-direct {p0, v3, v0}, Landroid/support/v7/widget/LinearLayoutManager;->k(II)V

    goto :goto_1
.end method

.method public final a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 230
    invoke-super {p0, p1}, Landroid/support/v7/widget/eg;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 231
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    if-lez v0, :cond_0

    .line 233
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v2

    .line 12688
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    invoke-direct {p0, v3, v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZ)Landroid/view/View;

    move-result-object v0

    .line 12689
    if-nez v0, :cond_1

    move v0, v1

    .line 234
    :goto_0
    invoke-virtual {v2, v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 12728
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZ)Landroid/view/View;

    move-result-object v0

    .line 12729
    if-nez v0, :cond_2

    .line 235
    :goto_1
    invoke-virtual {v2, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    .line 237
    :cond_0
    return-void

    .line 12689
    :cond_1
    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    .line 12729
    :cond_2
    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1211
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 1212
    invoke-super {p0, p1}, Landroid/support/v7/widget/eg;->a(Ljava/lang/String;)V

    .line 1214
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    .line 300
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    if-ne v0, p1, :cond_0

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    .line 304
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->j()V

    goto :goto_0
.end method

.method public b(ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)I
    .locals 1

    .prologue
    .line 1040
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-nez v0, :cond_0

    .line 1041
    const/4 v0, 0x0

    .line 1043
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)I

    move-result v0

    goto :goto_0
.end method

.method public final b(Landroid/support/v7/widget/eu;)I
    .locals 1

    .prologue
    .line 1048
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->i(Landroid/support/v7/widget/eu;)I

    move-result v0

    return v0
.end method

.method public b()Landroid/support/v7/widget/ei;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 187
    new-instance v0, Landroid/support/v7/widget/ei;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/ei;-><init>(II)V

    return-object v0
.end method

.method public final b(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 328
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 329
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid orientation:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    .line 332
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-ne p1, v0, :cond_1

    .line 338
    :goto_0
    return-void

    .line 335
    :cond_1
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    .line 336
    iput-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 337
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->j()V

    goto :goto_0
.end method

.method public final c(Landroid/support/v7/widget/eu;)I
    .locals 1

    .prologue
    .line 1053
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->i(Landroid/support/v7/widget/eu;)I

    move-result v0

    return v0
.end method

.method public final c(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 392
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    .line 393
    if-nez v0, :cond_1

    .line 394
    const/4 v0, 0x0

    .line 405
    :cond_0
    :goto_0
    return-object v0

    .line 396
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->f(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v1

    .line 397
    sub-int v1, p1, v1

    .line 398
    if-ltz v1, :cond_2

    if-ge v1, v0, :cond_2

    .line 399
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->f(I)Landroid/view/View;

    move-result-object v0

    .line 400
    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 405
    :cond_2
    invoke-super {p0, p1}, Landroid/support/v7/widget/eg;->c(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public c(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)V
    .locals 12

    .prologue
    .line 466
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 467
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/eu;->a()I

    move-result v0

    if-nez v0, :cond_1

    .line 468
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->c(Landroid/support/v7/widget/eo;)V

    .line 634
    :goto_0
    return-void

    .line 472
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 473
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    .line 476
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()V

    .line 477
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/widget/cx;->a:Z

    .line 479
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->r()V

    .line 481
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Landroid/support/v7/widget/cv;

    iget-boolean v0, v0, Landroid/support/v7/widget/cv;->d:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_7

    .line 483
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Landroid/support/v7/widget/cv;

    invoke-virtual {v0}, Landroid/support/v7/widget/cv;->a()V

    .line 484
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Landroid/support/v7/widget/cv;

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Landroid/support/v7/widget/cv;->c:Z

    .line 486
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Landroid/support/v7/widget/cv;

    .line 15646
    iget-boolean v0, p2, Landroid/support/v7/widget/eu;->g:Z

    .line 14787
    if-nez v0, :cond_4

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 14788
    :cond_4
    const/4 v0, 0x0

    .line 14718
    :goto_1
    if-nez v0, :cond_6

    .line 15746
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    if-eqz v0, :cond_27

    .line 16579
    iget-object v0, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_1b

    .line 16580
    const/4 v0, 0x0

    move-object v1, v0

    .line 15750
    :goto_2
    if-eqz v1, :cond_21

    .line 17208
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ei;

    .line 17919
    iget-object v3, v0, Landroid/support/v7/widget/ei;->c:Landroid/support/v7/widget/ex;

    invoke-virtual {v3}, Landroid/support/v7/widget/ex;->m()Z

    move-result v3

    .line 17209
    if-nez v3, :cond_1e

    .line 17948
    iget-object v3, v0, Landroid/support/v7/widget/ei;->c:Landroid/support/v7/widget/ex;

    invoke-virtual {v3}, Landroid/support/v7/widget/ex;->c()I

    move-result v3

    .line 17209
    if-ltz v3, :cond_1e

    .line 18948
    iget-object v0, v0, Landroid/support/v7/widget/ei;->c:Landroid/support/v7/widget/ex;

    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->c()I

    move-result v0

    .line 17210
    invoke-virtual {p2}, Landroid/support/v7/widget/eu;->a()I

    move-result v3

    if-ge v0, v3, :cond_1e

    const/4 v0, 0x1

    .line 15750
    :goto_3
    if-eqz v0, :cond_21

    .line 19214
    iget-object v0, v2, Landroid/support/v7/widget/cv;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v0}, Landroid/support/v7/widget/do;->a()I

    move-result v0

    .line 19215
    if-ltz v0, :cond_1f

    .line 19216
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/cv;->a(Landroid/view/View;)V

    .line 15752
    :cond_5
    :goto_4
    const/4 v0, 0x1

    .line 14725
    :goto_5
    if-nez v0, :cond_6

    .line 14734
    invoke-virtual {v2}, Landroid/support/v7/widget/cv;->b()V

    .line 14735
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    if-eqz v0, :cond_28

    invoke-virtual {p2}, Landroid/support/v7/widget/eu;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    iput v0, v2, Landroid/support/v7/widget/cv;->a:I

    .line 487
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Landroid/support/v7/widget/cv;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/cv;->d:Z

    .line 497
    :cond_7
    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->h(Landroid/support/v7/widget/eu;)I

    move-result v0

    .line 500
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget v1, v1, Landroid/support/v7/widget/cx;->j:I

    if-ltz v1, :cond_29

    .line 502
    const/4 v1, 0x0

    .line 507
    :goto_7
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v2}, Landroid/support/v7/widget/do;->b()I

    move-result v2

    add-int/2addr v1, v2

    .line 508
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v2}, Landroid/support/v7/widget/do;->f()I

    move-result v2

    add-int/2addr v0, v2

    .line 20646
    iget-boolean v2, p2, Landroid/support/v7/widget/eu;->g:Z

    .line 509
    if-eqz v2, :cond_8

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_8

    .line 514
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v2

    .line 515
    if-eqz v2, :cond_8

    .line 518
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    if-eqz v3, :cond_2a

    .line 519
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v3}, Landroid/support/v7/widget/do;->c()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 520
    invoke-virtual {v4, v2}, Landroid/support/v7/widget/do;->b(Landroid/view/View;)I

    move-result v2

    sub-int v2, v3, v2

    .line 521
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    sub-int/2addr v2, v3

    .line 527
    :goto_8
    if-lez v2, :cond_2b

    .line 528
    add-int/2addr v1, v2

    .line 537
    :cond_8
    :goto_9
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Landroid/support/v7/widget/cv;

    iget-boolean v2, v2, Landroid/support/v7/widget/cv;->c:Z

    if-eqz v2, :cond_2d

    .line 538
    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    if-eqz v2, :cond_2c

    const/4 v2, 0x1

    .line 545
    :goto_a
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Landroid/support/v7/widget/cv;

    invoke-virtual {p0, p1, p2, v3, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;Landroid/support/v7/widget/cv;I)V

    .line 546
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/eo;)V

    .line 547
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->s()Z

    move-result v3

    iput-boolean v3, v2, Landroid/support/v7/widget/cx;->l:Z

    .line 548
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    .line 21646
    iget-boolean v3, p2, Landroid/support/v7/widget/eu;->g:Z

    .line 548
    iput-boolean v3, v2, Landroid/support/v7/widget/cx;->i:Z

    .line 549
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Landroid/support/v7/widget/cv;

    iget-boolean v2, v2, Landroid/support/v7/widget/cv;->c:Z

    if-eqz v2, :cond_2f

    .line 551
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Landroid/support/v7/widget/cv;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/cv;)V

    .line 552
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iput v1, v2, Landroid/support/v7/widget/cx;->h:I

    .line 553
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/cx;Landroid/support/v7/widget/eu;Z)I

    .line 554
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget v1, v1, Landroid/support/v7/widget/cx;->b:I

    .line 555
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget v3, v2, Landroid/support/v7/widget/cx;->d:I

    .line 556
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget v2, v2, Landroid/support/v7/widget/cx;->c:I

    if-lez v2, :cond_9

    .line 557
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget v2, v2, Landroid/support/v7/widget/cx;->c:I

    add-int/2addr v0, v2

    .line 560
    :cond_9
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Landroid/support/v7/widget/cv;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/cv;)V

    .line 561
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iput v0, v2, Landroid/support/v7/widget/cx;->h:I

    .line 562
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget v2, v0, Landroid/support/v7/widget/cx;->d:I

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget v4, v4, Landroid/support/v7/widget/cx;->e:I

    add-int/2addr v2, v4

    iput v2, v0, Landroid/support/v7/widget/cx;->d:I

    .line 563
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/cx;Landroid/support/v7/widget/eu;Z)I

    .line 564
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget v2, v0, Landroid/support/v7/widget/cx;->b:I

    .line 566
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget v0, v0, Landroid/support/v7/widget/cx;->c:I

    if-lez v0, :cond_3c

    .line 568
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget v0, v0, Landroid/support/v7/widget/cx;->c:I

    .line 569
    invoke-direct {p0, v3, v1}, Landroid/support/v7/widget/LinearLayoutManager;->j(II)V

    .line 570
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iput v0, v1, Landroid/support/v7/widget/cx;->h:I

    .line 571
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/cx;Landroid/support/v7/widget/eu;Z)I

    .line 572
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget v0, v0, Landroid/support/v7/widget/cx;->b:I

    :goto_b
    move v1, v0

    move v0, v2

    .line 604
    :cond_a
    :goto_c
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v2

    if-lez v2, :cond_3b

    .line 608
    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    xor-int/2addr v2, v3

    if-eqz v2, :cond_31

    .line 609
    const/4 v2, 0x1

    invoke-direct {p0, v0, p1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;Z)I

    move-result v2

    .line 610
    add-int/2addr v1, v2

    .line 611
    add-int/2addr v0, v2

    .line 612
    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;Z)I

    move-result v2

    .line 613
    add-int/2addr v1, v2

    .line 614
    add-int/2addr v0, v2

    move v2, v1

    move v1, v0

    .line 22657
    :goto_d
    iget-boolean v0, p2, Landroid/support/v7/widget/eu;->i:Z

    .line 21667
    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    if-eqz v0, :cond_b

    .line 23646
    iget-boolean v0, p2, Landroid/support/v7/widget/eu;->g:Z

    .line 21667
    if-nez v0, :cond_b

    .line 21668
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->c()Z

    move-result v0

    if-nez v0, :cond_32

    .line 25646
    :cond_b
    :goto_e
    iget-boolean v0, p2, Landroid/support/v7/widget/eu;->g:Z

    .line 625
    if-nez v0, :cond_39

    .line 626
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 26057
    invoke-virtual {v0}, Landroid/support/v7/widget/do;->e()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/do;->b:I

    .line 630
    :goto_f
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Z

    goto/16 :goto_0

    .line 14791
    :cond_c
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    if-ltz v0, :cond_d

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    invoke-virtual {p2}, Landroid/support/v7/widget/eu;->a()I

    move-result v1

    if-lt v0, v1, :cond_e

    .line 14792
    :cond_d
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    .line 14793
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    .line 14797
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 14802
    :cond_e
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    iput v0, v2, Landroid/support/v7/widget/cv;->a:I

    .line 14803
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 14806
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->c:Z

    iput-boolean v0, v2, Landroid/support/v7/widget/cv;->c:Z

    .line 14807
    iget-boolean v0, v2, Landroid/support/v7/widget/cv;->c:Z

    if-eqz v0, :cond_f

    .line 14808
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v0}, Landroid/support/v7/widget/do;->c()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    sub-int/2addr v0, v1

    iput v0, v2, Landroid/support/v7/widget/cv;->b:I

    .line 14814
    :goto_10
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 14811
    :cond_f
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v0}, Landroid/support/v7/widget/do;->b()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    add-int/2addr v0, v1

    iput v0, v2, Landroid/support/v7/widget/cv;->b:I

    goto :goto_10

    .line 14817
    :cond_10
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_19

    .line 14818
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    .line 14819
    if-eqz v0, :cond_15

    .line 14820
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/do;->e(Landroid/view/View;)I

    move-result v1

    .line 14821
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v3}, Landroid/support/v7/widget/do;->e()I

    move-result v3

    if-le v1, v3, :cond_11

    .line 14823
    invoke-virtual {v2}, Landroid/support/v7/widget/cv;->b()V

    .line 14865
    :goto_11
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 14826
    :cond_11
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/do;->a(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 14827
    invoke-virtual {v3}, Landroid/support/v7/widget/do;->b()I

    move-result v3

    sub-int/2addr v1, v3

    .line 14828
    if-gez v1, :cond_12

    .line 14829
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v0}, Landroid/support/v7/widget/do;->b()I

    move-result v0

    iput v0, v2, Landroid/support/v7/widget/cv;->b:I

    .line 14830
    const/4 v0, 0x0

    iput-boolean v0, v2, Landroid/support/v7/widget/cv;->c:Z

    goto :goto_11

    .line 14833
    :cond_12
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v1}, Landroid/support/v7/widget/do;->c()I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 14834
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/do;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v1, v3

    .line 14835
    if-gez v1, :cond_13

    .line 14836
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v0}, Landroid/support/v7/widget/do;->c()I

    move-result v0

    iput v0, v2, Landroid/support/v7/widget/cv;->b:I

    .line 14837
    const/4 v0, 0x1

    iput-boolean v0, v2, Landroid/support/v7/widget/cv;->c:Z

    goto :goto_11

    .line 14840
    :cond_13
    iget-boolean v1, v2, Landroid/support/v7/widget/cv;->c:Z

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 14841
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/do;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 14842
    invoke-virtual {v1}, Landroid/support/v7/widget/do;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 14843
    :goto_12
    iput v0, v2, Landroid/support/v7/widget/cv;->b:I

    .line 14853
    :goto_13
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 14842
    :cond_14
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 14843
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/do;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_12

    .line 14845
    :cond_15
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v0

    if-lez v0, :cond_16

    .line 14847
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->f(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    .line 14848
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    if-ge v1, v0, :cond_17

    const/4 v0, 0x1

    :goto_14
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    if-ne v0, v1, :cond_18

    const/4 v0, 0x1

    :goto_15
    iput-boolean v0, v2, Landroid/support/v7/widget/cv;->c:Z

    .line 14851
    :cond_16
    invoke-virtual {v2}, Landroid/support/v7/widget/cv;->b()V

    goto :goto_13

    .line 14848
    :cond_17
    const/4 v0, 0x0

    goto :goto_14

    :cond_18
    const/4 v0, 0x0

    goto :goto_15

    .line 14856
    :cond_19
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    iput-boolean v0, v2, Landroid/support/v7/widget/cv;->c:Z

    .line 14858
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    if-eqz v0, :cond_1a

    .line 14859
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v0}, Landroid/support/v7/widget/do;->c()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    sub-int/2addr v0, v1

    iput v0, v2, Landroid/support/v7/widget/cv;->b:I

    goto/16 :goto_11

    .line 14862
    :cond_1a
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v0}, Landroid/support/v7/widget/do;->b()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    add-int/2addr v0, v1

    iput v0, v2, Landroid/support/v7/widget/cv;->b:I

    goto/16 :goto_11

    .line 16582
    :cond_1b
    iget-object v0, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 16583
    if-eqz v0, :cond_1c

    iget-object v1, p0, Landroid/support/v7/widget/eg;->q:Landroid/support/v7/widget/bq;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/bq;->d(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 16584
    :cond_1c
    const/4 v0, 0x0

    move-object v1, v0

    goto/16 :goto_2

    :cond_1d
    move-object v1, v0

    .line 16586
    goto/16 :goto_2

    .line 17210
    :cond_1e
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 19219
    :cond_1f
    invoke-static {v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/cv;->a:I

    .line 19220
    iget-boolean v3, v2, Landroid/support/v7/widget/cv;->c:Z

    if-eqz v3, :cond_20

    .line 19221
    iget-object v3, v2, Landroid/support/v7/widget/cv;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v3}, Landroid/support/v7/widget/do;->c()I

    move-result v3

    sub-int v0, v3, v0

    .line 19222
    iget-object v3, v2, Landroid/support/v7/widget/cv;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/do;->b(Landroid/view/View;)I

    move-result v3

    .line 19223
    sub-int/2addr v0, v3

    .line 19224
    iget-object v3, v2, Landroid/support/v7/widget/cv;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v3}, Landroid/support/v7/widget/do;->c()I

    move-result v3

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/support/v7/widget/cv;->b:I

    .line 19226
    if-lez v0, :cond_5

    .line 19227
    iget-object v3, v2, Landroid/support/v7/widget/cv;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/do;->e(Landroid/view/View;)I

    move-result v3

    .line 19228
    iget v4, v2, Landroid/support/v7/widget/cv;->b:I

    sub-int v3, v4, v3

    .line 19229
    iget-object v4, v2, Landroid/support/v7/widget/cv;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v4, v4, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v4}, Landroid/support/v7/widget/do;->b()I

    move-result v4

    .line 19230
    iget-object v5, v2, Landroid/support/v7/widget/cv;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/do;->a(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v1, v4

    .line 19232
    const/4 v5, 0x0

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v1, v4

    .line 19233
    sub-int v1, v3, v1

    .line 19234
    if-gez v1, :cond_5

    .line 19236
    iget v3, v2, Landroid/support/v7/widget/cv;->b:I

    neg-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v3

    iput v0, v2, Landroid/support/v7/widget/cv;->b:I

    goto/16 :goto_4

    .line 19240
    :cond_20
    iget-object v3, v2, Landroid/support/v7/widget/cv;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/do;->a(Landroid/view/View;)I

    move-result v3

    .line 19241
    iget-object v4, v2, Landroid/support/v7/widget/cv;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v4, v4, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v4}, Landroid/support/v7/widget/do;->b()I

    move-result v4

    sub-int v4, v3, v4

    .line 19242
    iput v3, v2, Landroid/support/v7/widget/cv;->b:I

    .line 19243
    if-lez v4, :cond_5

    .line 19244
    iget-object v5, v2, Landroid/support/v7/widget/cv;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 19245
    invoke-virtual {v5, v1}, Landroid/support/v7/widget/do;->e(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    .line 19246
    iget-object v5, v2, Landroid/support/v7/widget/cv;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v5}, Landroid/support/v7/widget/do;->c()I

    move-result v5

    sub-int v0, v5, v0

    .line 19248
    iget-object v5, v2, Landroid/support/v7/widget/cv;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 19249
    invoke-virtual {v5, v1}, Landroid/support/v7/widget/do;->b(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 19250
    iget-object v1, v2, Landroid/support/v7/widget/cv;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v1}, Landroid/support/v7/widget/do;->c()I

    move-result v1

    const/4 v5, 0x0

    .line 19251
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v1, v0

    .line 19252
    sub-int/2addr v0, v3

    .line 19253
    if-gez v0, :cond_5

    .line 19254
    iget v1, v2, Landroid/support/v7/widget/cv;->b:I

    neg-int v0, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, v2, Landroid/support/v7/widget/cv;->b:I

    goto/16 :goto_4

    .line 15754
    :cond_21
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    if-ne v0, v1, :cond_27

    .line 15757
    iget-boolean v0, v2, Landroid/support/v7/widget/cv;->c:Z

    if-eqz v0, :cond_24

    .line 15758
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)Landroid/view/View;

    move-result-object v0

    .line 15760
    :goto_16
    if-eqz v0, :cond_27

    .line 15761
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/cv;->a(Landroid/view/View;)V

    .line 19646
    iget-boolean v1, p2, Landroid/support/v7/widget/eu;->g:Z

    .line 15764
    if-nez v1, :cond_23

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->c()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 15766
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 15767
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/do;->a(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 15768
    invoke-virtual {v3}, Landroid/support/v7/widget/do;->c()I

    move-result v3

    if-ge v1, v3, :cond_22

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 15769
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/do;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 15770
    invoke-virtual {v1}, Landroid/support/v7/widget/do;->b()I

    move-result v1

    if-ge v0, v1, :cond_25

    :cond_22
    const/4 v0, 0x1

    .line 15771
    :goto_17
    if-eqz v0, :cond_23

    .line 15772
    iget-boolean v0, v2, Landroid/support/v7/widget/cv;->c:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 15773
    invoke-virtual {v0}, Landroid/support/v7/widget/do;->c()I

    move-result v0

    .line 15774
    :goto_18
    iput v0, v2, Landroid/support/v7/widget/cv;->b:I

    .line 15777
    :cond_23
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 15759
    :cond_24
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->e(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)Landroid/view/View;

    move-result-object v0

    goto :goto_16

    .line 15770
    :cond_25
    const/4 v0, 0x0

    goto :goto_17

    .line 15773
    :cond_26
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 15774
    invoke-virtual {v0}, Landroid/support/v7/widget/do;->b()I

    move-result v0

    goto :goto_18

    .line 15779
    :cond_27
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 14735
    :cond_28
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 505
    :cond_29
    const/4 v1, 0x0

    move v11, v1

    move v1, v0

    move v0, v11

    goto/16 :goto_7

    .line 523
    :cond_2a
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/do;->a(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 524
    invoke-virtual {v3}, Landroid/support/v7/widget/do;->b()I

    move-result v3

    sub-int/2addr v2, v3

    .line 525
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    sub-int v2, v3, v2

    goto/16 :goto_8

    .line 530
    :cond_2b
    sub-int/2addr v0, v2

    goto/16 :goto_9

    .line 538
    :cond_2c
    const/4 v2, -0x1

    goto/16 :goto_a

    .line 541
    :cond_2d
    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    if-eqz v2, :cond_2e

    const/4 v2, -0x1

    goto/16 :goto_a

    :cond_2e
    const/4 v2, 0x1

    goto/16 :goto_a

    .line 576
    :cond_2f
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Landroid/support/v7/widget/cv;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/cv;)V

    .line 577
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iput v0, v2, Landroid/support/v7/widget/cx;->h:I

    .line 578
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/cx;Landroid/support/v7/widget/eu;Z)I

    .line 579
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget v0, v0, Landroid/support/v7/widget/cx;->b:I

    .line 580
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget v2, v2, Landroid/support/v7/widget/cx;->d:I

    .line 581
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget v3, v3, Landroid/support/v7/widget/cx;->c:I

    if-lez v3, :cond_30

    .line 582
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget v3, v3, Landroid/support/v7/widget/cx;->c:I

    add-int/2addr v1, v3

    .line 585
    :cond_30
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Landroid/support/v7/widget/cv;

    invoke-direct {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/cv;)V

    .line 586
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iput v1, v3, Landroid/support/v7/widget/cx;->h:I

    .line 587
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget v3, v1, Landroid/support/v7/widget/cx;->d:I

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget v4, v4, Landroid/support/v7/widget/cx;->e:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/support/v7/widget/cx;->d:I

    .line 588
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, p2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/cx;Landroid/support/v7/widget/eu;Z)I

    .line 589
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget v1, v1, Landroid/support/v7/widget/cx;->b:I

    .line 591
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget v3, v3, Landroid/support/v7/widget/cx;->c:I

    if-lez v3, :cond_a

    .line 592
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget v3, v3, Landroid/support/v7/widget/cx;->c:I

    .line 594
    invoke-direct {p0, v2, v0}, Landroid/support/v7/widget/LinearLayoutManager;->i(II)V

    .line 595
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iput v3, v0, Landroid/support/v7/widget/cx;->h:I

    .line 596
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/cx;Landroid/support/v7/widget/eu;Z)I

    .line 597
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iget v0, v0, Landroid/support/v7/widget/cx;->b:I

    goto/16 :goto_c

    .line 616
    :cond_31
    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;Z)I

    move-result v2

    .line 617
    add-int/2addr v1, v2

    .line 618
    add-int/2addr v0, v2

    .line 619
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;Z)I

    move-result v2

    .line 620
    add-int/2addr v1, v2

    .line 621
    add-int/2addr v0, v2

    move v2, v1

    move v1, v0

    goto/16 :goto_d

    .line 21672
    :cond_32
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 23833
    iget-object v7, p1, Landroid/support/v7/widget/eo;->d:Ljava/util/List;

    .line 21674
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 21675
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->f(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v9

    .line 21676
    const/4 v0, 0x0

    move v6, v0

    :goto_19
    if-ge v6, v8, :cond_36

    .line 21677
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ex;

    .line 21678
    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->m()Z

    move-result v3

    if-nez v3, :cond_3a

    .line 21681
    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->c()I

    move-result v3

    .line 21682
    if-ge v3, v9, :cond_33

    const/4 v3, 0x1

    :goto_1a
    iget-boolean v10, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    if-eq v3, v10, :cond_34

    const/4 v3, -0x1

    .line 21684
    :goto_1b
    const/4 v10, -0x1

    if-ne v3, v10, :cond_35

    .line 21685
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    iget-object v0, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/do;->e(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v5

    move v3, v0

    move v0, v4

    .line 21676
    :goto_1c
    add-int/lit8 v4, v6, 0x1

    move v5, v3

    move v6, v4

    move v4, v0

    goto :goto_19

    .line 21682
    :cond_33
    const/4 v3, 0x0

    goto :goto_1a

    :cond_34
    const/4 v3, 0x1

    goto :goto_1b

    .line 21687
    :cond_35
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    iget-object v0, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/do;->e(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v4

    move v3, v5

    goto :goto_1c

    .line 21695
    :cond_36
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iput-object v7, v0, Landroid/support/v7/widget/cx;->k:Ljava/util/List;

    .line 21696
    if-lez v5, :cond_37

    .line 21697
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->t()Landroid/view/View;

    move-result-object v0

    .line 21698
    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->j(II)V

    .line 21699
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iput v5, v0, Landroid/support/v7/widget/cx;->h:I

    .line 21700
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    const/4 v2, 0x0

    iput v2, v0, Landroid/support/v7/widget/cx;->c:I

    .line 21701
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    .line 24058
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/cx;->a(Landroid/view/View;)V

    .line 21702
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/cx;Landroid/support/v7/widget/eu;Z)I

    .line 21705
    :cond_37
    if-lez v4, :cond_38

    .line 21706
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()Landroid/view/View;

    move-result-object v0

    .line 21707
    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->i(II)V

    .line 21708
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    iput v4, v0, Landroid/support/v7/widget/cx;->h:I

    .line 21709
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/cx;->c:I

    .line 21710
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    .line 25058
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/cx;->a(Landroid/view/View;)V

    .line 21711
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/cx;Landroid/support/v7/widget/eu;Z)I

    .line 21713
    :cond_38
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/cx;->k:Ljava/util/List;

    goto/16 :goto_e

    .line 628
    :cond_39
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Landroid/support/v7/widget/cv;

    invoke-virtual {v0}, Landroid/support/v7/widget/cv;->a()V

    goto/16 :goto_f

    :cond_3a
    move v0, v4

    move v3, v5

    goto :goto_1c

    :cond_3b
    move v2, v1

    move v1, v0

    goto/16 :goto_d

    :cond_3c
    move v0, v1

    goto/16 :goto_b
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 1885
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Landroid/support/v7/widget/eu;)I
    .locals 1

    .prologue
    .line 1058
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->j(Landroid/support/v7/widget/eu;)I

    move-result v0

    return v0
.end method

.method public final d()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 241
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 242
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>(Landroid/support/v7/widget/LinearLayoutManager$SavedState;)V

    .line 263
    :goto_0
    return-object v0

    .line 244
    :cond_0
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>()V

    .line 245
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v1

    if-lez v1, :cond_2

    .line 246
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()V

    .line 247
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    xor-int/2addr v1, v2

    .line 248
    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->c:Z

    .line 249
    if-eqz v1, :cond_1

    .line 250
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()Landroid/view/View;

    move-result-object v1

    .line 251
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v2}, Landroid/support/v7/widget/do;->c()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 252
    invoke-virtual {v3, v1}, Landroid/support/v7/widget/do;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    .line 253
    invoke-static {v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    goto :goto_0

    .line 255
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->t()Landroid/view/View;

    move-result-object v1

    .line 256
    invoke-static {v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    .line 257
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/do;->a(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 258
    invoke-virtual {v2}, Landroid/support/v7/widget/do;->b()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    goto :goto_0

    .line 13138
    :cond_2
    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    goto :goto_0
.end method

.method public final d(I)V
    .locals 2

    .prologue
    .line 985
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    .line 986
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    .line 987
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 28138
    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    .line 990
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->j()V

    .line 991
    return-void
.end method

.method final e(I)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    const/high16 v2, -0x80000000

    const/4 v1, 0x1

    .line 1503
    sparse-switch p1, :sswitch_data_0

    move v0, v2

    .line 1536
    :cond_0
    :goto_0
    return v0

    .line 1505
    :sswitch_0
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-eq v2, v1, :cond_0

    .line 1507
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1508
    goto :goto_0

    .line 1513
    :sswitch_1
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-ne v2, v1, :cond_1

    move v0, v1

    .line 1514
    goto :goto_0

    .line 1515
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1518
    goto :goto_0

    .line 1521
    :sswitch_2
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-eq v3, v1, :cond_0

    move v0, v2

    goto :goto_0

    .line 1524
    :sswitch_3
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    .line 1527
    :sswitch_4
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    .line 1530
    :sswitch_5
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    .line 1503
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public final e(Landroid/support/v7/widget/eu;)I
    .locals 1

    .prologue
    .line 1063
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->j(Landroid/support/v7/widget/eu;)I

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f(Landroid/support/v7/widget/eu;)I
    .locals 1

    .prologue
    .line 1068
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->k(Landroid/support/v7/widget/eu;)I

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 292
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g(Landroid/support/v7/widget/eu;)I
    .locals 1

    .prologue
    .line 1073
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->k(Landroid/support/v7/widget/eu;)I

    move-result v0

    return v0
.end method

.method protected final g()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 948
    .line 27000
    iget-object v1, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 948
    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final h()V
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    if-nez v0, :cond_0

    .line 27966
    new-instance v0, Landroid/support/v7/widget/cx;

    invoke-direct {v0}, Landroid/support/v7/widget/cx;-><init>()V

    .line 953
    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/cx;

    .line 955
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    if-nez v0, :cond_1

    .line 956
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    invoke-static {p0, v0}, Landroid/support/v7/widget/do;->a(Landroid/support/v7/widget/eg;I)Landroid/support/v7/widget/do;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 958
    :cond_1
    return-void
.end method

.method final i()Z
    .locals 6

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1487
    .line 39478
    iget v2, p0, Landroid/support/v7/widget/eg;->y:I

    .line 1487
    if-eq v2, v3, :cond_2

    .line 40460
    iget v2, p0, Landroid/support/v7/widget/eg;->x:I

    .line 1488
    if-eq v2, v3, :cond_2

    .line 41027
    invoke-virtual {p0}, Landroid/support/v7/widget/eg;->l()I

    move-result v3

    move v2, v1

    .line 41028
    :goto_0
    if-ge v2, v3, :cond_1

    .line 41029
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/eg;->f(I)Landroid/view/View;

    move-result-object v4

    .line 41030
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 41031
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v5, :cond_0

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v4, :cond_0

    move v2, v0

    .line 1489
    :goto_1
    if-eqz v2, :cond_2

    :goto_2
    return v0

    .line 41028
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 41035
    goto :goto_1

    :cond_2
    move v0, v1

    .line 1489
    goto :goto_2
.end method
