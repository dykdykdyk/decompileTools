.class public Lcom/amap/api/mapcore2d/ay$b;
.super Ljava/lang/Object;
.source "Mediator.java"


# instance fields
.field public a:Z

.field b:I

.field final synthetic c:Lcom/amap/api/mapcore2d/ay;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/ay;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 200
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/ay$b;->a:Z

    .line 234
    iput v0, p0, Lcom/amap/api/mapcore2d/ay$b;->b:I

    .line 201
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ay$b;->e()V

    .line 202
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ay$a;->a(Lcom/amap/api/mapcore2d/ay$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$a;->b()V

    .line 241
    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore2d/ay$b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore2d/ay$b;->b:I

    .line 242
    iget v0, p0, Lcom/amap/api/mapcore2d/ay$b;->b:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/amap/api/mapcore2d/ay$b;->b:I

    rem-int/lit8 v0, v0, 0x14

    if-eqz v0, :cond_2

    .line 265
    :cond_1
    return-void

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    .line 248
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk;->size()I

    move-result v2

    .line 252
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 253
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bk;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/am;

    .line 254
    iget-object v0, v0, Lcom/amap/api/mapcore2d/am;->q:Lcom/amap/api/mapcore2d/bs;

    .line 255
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bs;->i()V

    .line 252
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 271
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    iput-boolean v0, v1, Lcom/amap/api/mapcore2d/ay$d;->a:Z

    .line 273
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    .line 274
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bk;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 297
    :cond_0
    return-void

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bk;->size()I

    move-result v2

    move v1, v0

    .line 278
    :goto_0
    if-ge v1, v2, :cond_0

    .line 279
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bk;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/am;

    .line 280
    iget-object v0, v0, Lcom/amap/api/mapcore2d/am;->q:Lcom/amap/api/mapcore2d/bs;

    .line 281
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bs;->b()V

    .line 278
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 303
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    .line 304
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 322
    :cond_0
    return-void

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk;->size()I

    move-result v2

    .line 308
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 309
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bk;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/am;

    .line 310
    iget-object v0, v0, Lcom/amap/api/mapcore2d/am;->q:Lcom/amap/api/mapcore2d/bs;

    .line 311
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bs;->d()V

    .line 308
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 328
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    .line 329
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 347
    :cond_0
    return-void

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk;->size()I

    move-result v2

    .line 333
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 334
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bk;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/am;

    .line 335
    iget-object v0, v0, Lcom/amap/api/mapcore2d/am;->q:Lcom/amap/api/mapcore2d/bs;

    .line 336
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bs;->c()V

    .line 333
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 353
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    .line 354
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 372
    :cond_0
    return-void

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk;->size()I

    move-result v2

    .line 358
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 359
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bk;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/am;

    .line 360
    iget-object v0, v0, Lcom/amap/api/mapcore2d/am;->q:Lcom/amap/api/mapcore2d/bs;

    .line 361
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bs;->h()V

    .line 358
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
