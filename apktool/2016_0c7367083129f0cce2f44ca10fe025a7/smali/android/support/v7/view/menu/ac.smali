.class public Landroid/support/v7/view/menu/ac;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"


# instance fields
.field public a:Landroid/view/View;

.field public b:I

.field c:Landroid/widget/PopupWindow$OnDismissListener;

.field private final d:Landroid/content/Context;

.field private final e:Landroid/support/v7/view/menu/o;

.field private final f:Z

.field private final g:I

.field private final h:I

.field private i:Z

.field private j:Landroid/support/v7/view/menu/af;

.field private k:Landroid/support/v7/view/menu/ab;

.field private final l:Landroid/widget/PopupWindow$OnDismissListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/o;Landroid/view/View;ZI)V
    .locals 7

    .prologue
    .line 73
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/view/menu/ac;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/o;Landroid/view/View;ZII)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/o;Landroid/view/View;ZII)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const v0, 0x800003

    iput v0, p0, Landroid/support/v7/view/menu/ac;->b:I

    .line 330
    new-instance v0, Landroid/support/v7/view/menu/ad;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/ad;-><init>(Landroid/support/v7/view/menu/ac;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/ac;->l:Landroid/widget/PopupWindow$OnDismissListener;

    .line 79
    iput-object p1, p0, Landroid/support/v7/view/menu/ac;->d:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Landroid/support/v7/view/menu/ac;->e:Landroid/support/v7/view/menu/o;

    .line 81
    iput-object p3, p0, Landroid/support/v7/view/menu/ac;->a:Landroid/view/View;

    .line 82
    iput-boolean p4, p0, Landroid/support/v7/view/menu/ac;->f:Z

    .line 83
    iput p5, p0, Landroid/support/v7/view/menu/ac;->g:I

    .line 84
    iput p6, p0, Landroid/support/v7/view/menu/ac;->h:I

    .line 85
    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v7/view/menu/ab;
    .locals 7

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/v7/view/menu/ac;->k:Landroid/support/v7/view/menu/ab;

    if-nez v0, :cond_0

    .line 1218
    iget-object v0, p0, Landroid/support/v7/view/menu/ac;->d:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1220
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1221
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1223
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 1224
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1231
    :goto_0
    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1232
    iget-object v1, p0, Landroid/support/v7/view/menu/ac;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$dimen;->abc_cascading_menus_min_smallest_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1234
    if-lt v0, v1, :cond_3

    const/4 v0, 0x1

    .line 1237
    :goto_1
    if-eqz v0, :cond_4

    .line 1238
    new-instance v0, Landroid/support/v7/view/menu/g;

    iget-object v1, p0, Landroid/support/v7/view/menu/ac;->d:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v7/view/menu/ac;->a:Landroid/view/View;

    iget v3, p0, Landroid/support/v7/view/menu/ac;->g:I

    iget v4, p0, Landroid/support/v7/view/menu/ac;->h:I

    iget-boolean v5, p0, Landroid/support/v7/view/menu/ac;->f:Z

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/g;-><init>(Landroid/content/Context;Landroid/view/View;IIZ)V

    .line 1246
    :goto_2
    iget-object v1, p0, Landroid/support/v7/view/menu/ac;->e:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/ab;->a(Landroid/support/v7/view/menu/o;)V

    .line 1247
    iget-object v1, p0, Landroid/support/v7/view/menu/ac;->l:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/ab;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1250
    iget-object v1, p0, Landroid/support/v7/view/menu/ac;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/ab;->a(Landroid/view/View;)V

    .line 1251
    iget-object v1, p0, Landroid/support/v7/view/menu/ac;->j:Landroid/support/v7/view/menu/af;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/ab;->a(Landroid/support/v7/view/menu/af;)V

    .line 1252
    iget-boolean v1, p0, Landroid/support/v7/view/menu/ac;->i:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/ab;->b(Z)V

    .line 1253
    iget v1, p0, Landroid/support/v7/view/menu/ac;->b:I

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/ab;->a(I)V

    .line 151
    iput-object v0, p0, Landroid/support/v7/view/menu/ac;->k:Landroid/support/v7/view/menu/ab;

    .line 153
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/ac;->k:Landroid/support/v7/view/menu/ab;

    return-object v0

    .line 1225
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-lt v2, v3, :cond_2

    .line 1226
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 1228
    :cond_2
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 1234
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1241
    :cond_4
    new-instance v0, Landroid/support/v7/view/menu/al;

    iget-object v1, p0, Landroid/support/v7/view/menu/ac;->d:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v7/view/menu/ac;->e:Landroid/support/v7/view/menu/o;

    iget-object v3, p0, Landroid/support/v7/view/menu/ac;->a:Landroid/view/View;

    iget v4, p0, Landroid/support/v7/view/menu/ac;->g:I

    iget v5, p0, Landroid/support/v7/view/menu/ac;->h:I

    iget-boolean v6, p0, Landroid/support/v7/view/menu/ac;->f:Z

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/view/menu/al;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/o;Landroid/view/View;IIZ)V

    goto :goto_2
.end method

.method final a(IIZZ)V
    .locals 6

    .prologue
    .line 259
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ac;->a()Landroid/support/v7/view/menu/ab;

    move-result-object v0

    .line 260
    invoke-virtual {v0, p4}, Landroid/support/v7/view/menu/ab;->c(Z)V

    .line 262
    if-eqz p3, :cond_1

    .line 266
    iget v1, p0, Landroid/support/v7/view/menu/ac;->b:I

    iget-object v2, p0, Landroid/support/v7/view/menu/ac;->a:Landroid/view/View;

    .line 267
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 266
    invoke-static {v1, v2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    .line 268
    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 269
    iget-object v1, p0, Landroid/support/v7/view/menu/ac;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr p1, v1

    .line 272
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/ab;->b(I)V

    .line 273
    invoke-virtual {v0, p2}, Landroid/support/v7/view/menu/ab;->c(I)V

    .line 279
    iget-object v1, p0, Landroid/support/v7/view/menu/ac;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 280
    const/high16 v2, 0x42400000    # 48.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 281
    new-instance v2, Landroid/graphics/Rect;

    sub-int v3, p1, v1

    sub-int v4, p2, v1

    add-int v5, p1, v1

    add-int/2addr v1, p2

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2070
    iput-object v2, v0, Landroid/support/v7/view/menu/ab;->a:Landroid/graphics/Rect;

    .line 286
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/view/menu/ab;->b()V

    .line 287
    return-void
.end method

.method public final a(Landroid/support/v7/view/menu/af;)V
    .locals 1

    .prologue
    .line 321
    iput-object p1, p0, Landroid/support/v7/view/menu/ac;->j:Landroid/support/v7/view/menu/af;

    .line 322
    iget-object v0, p0, Landroid/support/v7/view/menu/ac;->k:Landroid/support/v7/view/menu/ab;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Landroid/support/v7/view/menu/ac;->k:Landroid/support/v7/view/menu/ab;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/ab;->a(Landroid/support/v7/view/menu/af;)V

    .line 325
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 112
    iput-boolean p1, p0, Landroid/support/v7/view/menu/ac;->i:Z

    .line 113
    iget-object v0, p0, Landroid/support/v7/view/menu/ac;->k:Landroid/support/v7/view/menu/ab;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Landroid/support/v7/view/menu/ac;->k:Landroid/support/v7/view/menu/ab;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/ab;->b(Z)V

    .line 116
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 163
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ac;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    :goto_0
    return v0

    .line 167
    :cond_0
    iget-object v2, p0, Landroid/support/v7/view/menu/ac;->a:Landroid/view/View;

    if-nez v2, :cond_1

    move v0, v1

    .line 168
    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/support/v7/view/menu/ac;->a(IIZZ)V

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ac;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Landroid/support/v7/view/menu/ac;->k:Landroid/support/v7/view/menu/ab;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/ab;->c()V

    .line 297
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/view/menu/ac;->k:Landroid/support/v7/view/menu/ab;

    .line 310
    iget-object v0, p0, Landroid/support/v7/view/menu/ac;->c:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Landroid/support/v7/view/menu/ac;->c:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 313
    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Landroid/support/v7/view/menu/ac;->k:Landroid/support/v7/view/menu/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/ac;->k:Landroid/support/v7/view/menu/ab;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/ab;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
