.class public final Lcom/nut/blehunter/ui/b/a/b;
.super Ljava/lang/Object;
.source "BaseDialogFragment.java"


# instance fields
.field a:Landroid/content/Context;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Landroid/view/View;

.field protected g:Z

.field protected h:Z

.field protected i:Lcom/nut/blehunter/ui/b/a/d;

.field protected j:Lcom/nut/blehunter/ui/b/a/d;

.field protected k:Lcom/nut/blehunter/ui/b/a/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-boolean v0, p0, Lcom/nut/blehunter/ui/b/a/b;->g:Z

    .line 226
    iput-boolean v0, p0, Lcom/nut/blehunter/ui/b/a/b;->h:Z

    .line 235
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/a/b;->a:Landroid/content/Context;

    .line 236
    return-void
.end method


# virtual methods
.method public final a()Lcom/nut/blehunter/ui/b/a/a;
    .locals 1

    .prologue
    .line 307
    new-instance v0, Lcom/nut/blehunter/ui/b/a/a;

    invoke-direct {v0}, Lcom/nut/blehunter/ui/b/a/a;-><init>()V

    .line 308
    invoke-virtual {v0, p0}, Lcom/nut/blehunter/ui/b/a/a;->a(Lcom/nut/blehunter/ui/b/a/b;)V

    .line 309
    return-object v0
.end method

.method public final a(I)Lcom/nut/blehunter/ui/b/a/b;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/b;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1247
    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a/b;->b:Ljava/lang/String;

    .line 243
    return-object p0
.end method

.method public final a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/b;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-virtual {p0, v0, p2}, Lcom/nut/blehunter/ui/b/a/b;->a(Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/View;)Lcom/nut/blehunter/ui/b/a/b;
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/a/b;->f:Landroid/view/View;

    .line 303
    return-object p0
.end method

.method public final a(Lcom/nut/blehunter/ui/b/a/e;)Lcom/nut/blehunter/ui/b/a/b;
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/a/b;->k:Lcom/nut/blehunter/ui/b/a/e;

    .line 288
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/nut/blehunter/ui/b/a/b;
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/a/b;->b:Ljava/lang/String;

    .line 248
    return-object p0
.end method

.method public final a(Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/a/b;->d:Ljava/lang/String;

    .line 269
    iput-object p2, p0, Lcom/nut/blehunter/ui/b/a/b;->i:Lcom/nut/blehunter/ui/b/a/d;

    .line 270
    return-object p0
.end method

.method public final a(Z)Lcom/nut/blehunter/ui/b/a/b;
    .locals 0

    .prologue
    .line 292
    iput-boolean p1, p0, Lcom/nut/blehunter/ui/b/a/b;->g:Z

    .line 293
    return-object p0
.end method

.method public final b(I)Lcom/nut/blehunter/ui/b/a/b;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/b;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1256
    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a/b;->c:Ljava/lang/String;

    .line 252
    return-object p0
.end method

.method public final b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/b;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-virtual {p0, v0, p2}, Lcom/nut/blehunter/ui/b/a/b;->b(Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/nut/blehunter/ui/b/a/b;
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/a/b;->c:Ljava/lang/String;

    .line 257
    return-object p0
.end method

.method public final b(Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/a/b;->e:Ljava/lang/String;

    .line 282
    iput-object p2, p0, Lcom/nut/blehunter/ui/b/a/b;->j:Lcom/nut/blehunter/ui/b/a/d;

    .line 283
    return-object p0
.end method

.method public final b(Z)Lcom/nut/blehunter/ui/b/a/b;
    .locals 0

    .prologue
    .line 297
    iput-boolean p1, p0, Lcom/nut/blehunter/ui/b/a/b;->h:Z

    .line 298
    return-object p0
.end method
