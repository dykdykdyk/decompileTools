.class public Lcom/nut/blehunter/ui/NutDetailActivity;
.super Lcom/nut/blehunter/ui/b;
.source "NutDetailActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/nut/blehunter/ui/b/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nut/blehunter/ui/b;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/nut/blehunter/ui/b/a/d;"
    }
.end annotation


# instance fields
.field private a:Lcom/nut/blehunter/entity/Nut;

.field private b:Lcom/nut/blehunter/ui/widget/CircleImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageButton;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/view/animation/Animation;

.field private h:Z

.field private i:Landroid/os/CountDownTimer;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/animation/ValueAnimator;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/TextView;

.field private n:Lcom/nut/blehunter/entity/f;

.field private o:Landroid/view/Menu;

.field private p:Z

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Lcom/squareup/picasso/Target;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    .line 98
    iput-boolean v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->h:Z

    .line 114
    iput-boolean v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->p:Z

    .line 116
    iput-boolean v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->q:Z

    .line 120
    new-instance v0, Lcom/nut/blehunter/ui/dz;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/dz;-><init>(Lcom/nut/blehunter/ui/NutDetailActivity;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->s:Lcom/squareup/picasso/Target;

    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/NutDetailActivity;)Lcom/nut/blehunter/entity/f;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->n:Lcom/nut/blehunter/entity/f;

    return-object v0
.end method

.method private static a(Lcom/nut/blehunter/entity/f;Lcom/nut/blehunter/ui/widget/CircleImageView;)V
    .locals 2

    .prologue
    .line 171
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nut/blehunter/entity/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 172
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/nut/blehunter/ui/widget/CircleImageView;->setBorderWidth(I)V

    .line 173
    invoke-virtual {p1, v0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->setBorderColor(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/NutDetailActivity;Landroid/view/View;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v0, -0x2

    const/4 v4, 0x0

    .line 6542
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0, v0}, Landroid/widget/PopupWindow;-><init>(II)V

    .line 6543
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NutDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0300a9

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6544
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6545
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 6546
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->measure(II)V

    .line 6548
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6549
    invoke-virtual {v1, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 6550
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 6551
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 6552
    const v3, 0x800033

    aget v4, v2, v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    aget v2, v2, v7

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    sub-int v0, v2, v0

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {v1, p1, v3, v4, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/NutDetailActivity;Lcom/nut/blehunter/entity/f;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/high16 v2, 0x4000000

    .line 5325
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 5326
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NutDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 5330
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 5331
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NutDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NutDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5335
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/nut/blehunter/entity/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 5336
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5337
    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/NutDetailActivity;->b(I)V

    .line 5338
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5339
    const v0, 0x7f0d0122

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5340
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5342
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/nut/blehunter/entity/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 5343
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NutDetailActivity;->h()Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 5344
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 5346
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 5347
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 5349
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/nut/blehunter/entity/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 5350
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 5351
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5355
    :goto_1
    return-void

    .line 5327
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 5328
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NutDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    goto/16 :goto_0

    .line 5354
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/NutDetailActivity;Z)Z
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/NutDetailActivity;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/nut/blehunter/ui/NutDetailActivity;->c()V

    return-void
.end method

.method private c(I)Landroid/widget/ImageView;
    .locals 3

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NutDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->l:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/widget/CircleImageView;

    .line 501
    new-instance v1, Lcom/nut/blehunter/ui/eg;

    invoke-direct {v1, p0, p1}, Lcom/nut/blehunter/ui/eg;-><init>(Lcom/nut/blehunter/ui/NutDetailActivity;I)V

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/widget/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->n:Lcom/nut/blehunter/entity/f;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->p:Z

    if-eqz v1, :cond_0

    .line 536
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->n:Lcom/nut/blehunter/entity/f;

    invoke-static {v1, v0}, Lcom/nut/blehunter/ui/NutDetailActivity;->a(Lcom/nut/blehunter/entity/f;Lcom/nut/blehunter/ui/widget/CircleImageView;)V

    .line 538
    :cond_0
    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->o:Landroid/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->n:Lcom/nut/blehunter/entity/f;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-boolean v0, v0, Lcom/nut/blehunter/entity/Nut;->E:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0d0251

    .line 145
    :goto_0
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->n:Lcom/nut/blehunter/entity/f;

    iget-object v2, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->o:Landroid/view/Menu;

    invoke-interface {v2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1151
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/nut/blehunter/entity/f;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 1152
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1153
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1156
    :cond_0
    :goto_1
    return-void

    .line 144
    :cond_1
    const v0, 0x7f0d024b

    goto :goto_0

    .line 1155
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic c(Lcom/nut/blehunter/ui/NutDetailActivity;)V
    .locals 4

    .prologue
    .line 77
    .line 6160
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->n:Lcom/nut/blehunter/entity/f;

    if-eqz v0, :cond_0

    .line 6161
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 6162
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 6163
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/widget/CircleImageView;

    .line 6164
    iget-object v3, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->n:Lcom/nut/blehunter/entity/f;

    invoke-static {v3, v0}, Lcom/nut/blehunter/ui/NutDetailActivity;->a(Lcom/nut/blehunter/entity/f;Lcom/nut/blehunter/ui/widget/CircleImageView;)V

    .line 6162
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 4

    .prologue
    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    const-string v0, "Mac Address:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/nut/blehunter/d/q;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\nDeviceId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\nDevice Info:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->v:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->x:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\nProductId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget v2, v2, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->q:Lcom/nut/blehunter/entity/WechatIdentifier;

    if-eqz v0, :cond_0

    .line 254
    const-string v0, "UUID:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->q:Lcom/nut/blehunter/entity/WechatIdentifier;

    iget-object v2, v2, Lcom/nut/blehunter/entity/WechatIdentifier;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\nMajor:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->q:Lcom/nut/blehunter/entity/WechatIdentifier;

    iget v2, v2, Lcom/nut/blehunter/entity/WechatIdentifier;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\nMinor:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->q:Lcom/nut/blehunter/entity/WechatIdentifier;

    iget v2, v2, Lcom/nut/blehunter/entity/WechatIdentifier;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget v0, v0, Lcom/nut/blehunter/entity/Nut;->C:I

    if-lez v0, :cond_1

    .line 259
    const-string v0, "battery:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget v2, v2, Lcom/nut/blehunter/entity/Nut;->C:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_1
    const/16 v0, 0xf

    .line 262
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v2

    iget-object v3, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget v3, v3, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/provider/m;->a(I)Lcom/nut/blehunter/entity/t;

    move-result-object v2

    .line 263
    if-eqz v2, :cond_2

    .line 264
    iget v0, v2, Lcom/nut/blehunter/entity/t;->j:I

    .line 266
    :cond_2
    const-string v2, "AD:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/nut/blehunter/ui/NutDetailActivity;)Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->h:Z

    return v0
.end method

.method static synthetic e(Lcom/nut/blehunter/ui/NutDetailActivity;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->g:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic f(Lcom/nut/blehunter/ui/NutDetailActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/nut/blehunter/ui/NutDetailActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic h(Lcom/nut/blehunter/ui/NutDetailActivity;)Lcom/nut/blehunter/entity/Nut;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    return-object v0
.end method

.method static synthetic i(Lcom/nut/blehunter/ui/NutDetailActivity;)Lcom/nut/blehunter/ui/widget/CircleImageView;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->b:Lcom/nut/blehunter/ui/widget/CircleImageView;

    return-object v0
.end method

.method static synthetic j(Lcom/nut/blehunter/ui/NutDetailActivity;)Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->k:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic k(Lcom/nut/blehunter/ui/NutDetailActivity;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/nut/blehunter/ui/NutDetailActivity;->s()V

    return-void
.end method

.method private p()V
    .locals 3

    .prologue
    .line 271
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/MapLocationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    const-string v1, "nut"

    iget-object v2, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 273
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 274
    const v0, 0x7f040010

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/NutDetailActivity;->overridePendingTransition(II)V

    .line 275
    return-void
.end method

.method private q()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutDetailActivity;->a(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->b:Lcom/nut/blehunter/ui/widget/CircleImageView;

    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    invoke-static {v0, v1}, Lcom/nut/blehunter/t;->a(Landroid/widget/ImageView;Lcom/nut/blehunter/entity/Nut;)V

    .line 362
    return-void
.end method

.method private r()V
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 409
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget v1, v1, Lcom/nut/blehunter/entity/Nut;->y:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 410
    const v1, 0x7f03007b

    invoke-direct {p0, v1}, Lcom/nut/blehunter/ui/NutDetailActivity;->c(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-boolean v1, v1, Lcom/nut/blehunter/entity/Nut;->E:Z

    if-eqz v1, :cond_3

    .line 412
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Nut;->A:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Nut;->A:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 413
    const v1, 0x7f03007c

    invoke-direct {p0, v1}, Lcom/nut/blehunter/ui/NutDetailActivity;->c(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    invoke-virtual {v1}, Lcom/nut/blehunter/entity/Nut;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/provider/m;->a(Lcom/nut/blehunter/entity/Nut;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 420
    const v1, 0x7f03007e

    invoke-direct {p0, v1}, Lcom/nut/blehunter/ui/NutDetailActivity;->c(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    :cond_1
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget v1, v1, Lcom/nut/blehunter/entity/Nut;->K:I

    packed-switch v1, :pswitch_data_0

    .line 474
    :cond_2
    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 475
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 476
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 477
    iget-object v2, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 416
    :cond_3
    const v1, 0x7f03007d

    invoke-direct {p0, v1}, Lcom/nut/blehunter/ui/NutDetailActivity;->c(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 424
    :pswitch_1
    new-instance v1, Lcom/nut/blehunter/ui/ed;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/ed;-><init>(Lcom/nut/blehunter/ui/NutDetailActivity;)V

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/NutDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 431
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget v1, v1, Lcom/nut/blehunter/entity/Nut;->L:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_5

    .line 432
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->c:Landroid/widget/TextView;

    const v2, 0x7f06012e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 436
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 437
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 438
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 439
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->d:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 440
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->e:Landroid/widget/TextView;

    const v2, 0x7f06011a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 441
    iget-boolean v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->h:Z

    if-eqz v1, :cond_2

    .line 442
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 443
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->f:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->g:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 444
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->e:Landroid/widget/TextView;

    const v2, 0x7f06011b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 433
    :cond_5
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget v1, v1, Lcom/nut/blehunter/entity/Nut;->L:I

    if-lez v1, :cond_4

    .line 434
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->c:Landroid/widget/TextView;

    const v2, 0x7f06012c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 450
    :pswitch_2
    const v1, 0x7f030079

    invoke-direct {p0, v1}, Lcom/nut/blehunter/ui/NutDetailActivity;->c(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    :pswitch_3
    new-instance v1, Lcom/nut/blehunter/ui/ee;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/ee;-><init>(Lcom/nut/blehunter/ui/NutDetailActivity;)V

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/NutDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 459
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->c:Landroid/widget/TextView;

    const v2, 0x7f06012b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 460
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 461
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->d:Landroid/widget/ImageButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 462
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 463
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->g:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    .line 464
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->e:Landroid/widget/TextView;

    const v2, 0x7f060184

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 465
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->j:Landroid/widget/ImageView;

    new-instance v2, Lcom/nut/blehunter/ui/ef;

    invoke-direct {v2, p0}, Lcom/nut/blehunter/ui/ef;-><init>(Lcom/nut/blehunter/ui/NutDetailActivity;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 480
    :cond_6
    return-void

    .line 422
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private s()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 584
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->h:Z

    .line 585
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->h:Z

    .line 3619
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3620
    const-string v3, "device_id"

    iget-object v4, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v4, v4, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3621
    const-string v3, "call"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3622
    const/16 v0, 0xe

    invoke-virtual {p0, v0, v2}, Lcom/nut/blehunter/ui/NutDetailActivity;->a(ILandroid/os/Bundle;)V

    .line 586
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->h:Z

    if-eqz v0, :cond_2

    .line 587
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->i:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    .line 588
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v0

    iget-object v2, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget v2, v2, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-virtual {v0, v2}, Lcom/nut/blehunter/provider/m;->b(I)I

    move-result v0

    .line 589
    new-instance v2, Lcom/nut/blehunter/ui/eh;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    invoke-direct {v2, p0, v4, v5}, Lcom/nut/blehunter/ui/eh;-><init>(Lcom/nut/blehunter/ui/NutDetailActivity;J)V

    iput-object v2, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->i:Landroid/os/CountDownTimer;

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->i:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 604
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 605
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 606
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f06011b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 616
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 584
    goto :goto_0

    .line 608
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->i:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_3

    .line 609
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->i:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 611
    :cond_3
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 612
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 613
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->f:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 614
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f06011a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private t()V
    .locals 3

    .prologue
    .line 660
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/NutSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 661
    const-string v1, "nut"

    iget-object v2, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 662
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 663
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 181
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 182
    const-string v1, "device_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NutDetailActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 188
    :pswitch_0
    const-string v1, "rssi"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 189
    int-to-double v2, v0

    invoke-static {v2, v3}, Lcom/nut/blehunter/d/m;->a(D)I

    move-result v1

    .line 190
    iget-object v2, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iput v1, v2, Lcom/nut/blehunter/entity/Nut;->L:I

    .line 191
    const/4 v2, 0x3

    if-le v1, v2, :cond_4

    .line 192
    iget-object v2, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->c:Landroid/widget/TextView;

    const v3, 0x7f06012e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 196
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->b:Lcom/nut/blehunter/ui/widget/CircleImageView;

    int-to-float v1, v1

    const/high16 v3, 0x42700000    # 60.0f

    mul-float/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/nut/blehunter/ui/widget/CircleImageView;->setHighlightBorderSweepAngle(F)V

    .line 197
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/nut/blehunter/entity/o;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 199
    invoke-direct {p0}, Lcom/nut/blehunter/ui/NutDetailActivity;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->r:Ljava/lang/String;

    .line 201
    :cond_3
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->m:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "rssi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 193
    :cond_4
    if-lez v1, :cond_2

    .line 194
    iget-object v2, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->c:Landroid/widget/TextView;

    const v3, 0x7f06012c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 186
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/support/v4/app/DialogFragment;I)V
    .locals 5

    .prologue
    .line 679
    invoke-virtual {p1}, Landroid/support/v4/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 684
    :cond_1
    :goto_1
    return-void

    .line 679
    :pswitch_0
    const-string v2, "sub_delete_shared"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 681
    :pswitch_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    .line 4687
    if-eqz v0, :cond_1

    .line 4690
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 4691
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->b()Lcom/nut/blehunter/rxApi/service/AccountService;

    move-result-object v1

    new-instance v2, Lcom/nut/blehunter/rxApi/model/DeleteSharedRequestBody;

    iget-object v3, v0, Lcom/nut/blehunter/entity/Nut;->f:Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/nut/blehunter/rxApi/model/DeleteSharedRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/nut/blehunter/rxApi/service/AccountService;->deleteShared(Lcom/nut/blehunter/rxApi/model/DeleteSharedRequestBody;)Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/nut/blehunter/ui/ei;

    invoke-direct {v2, p0, v0}, Lcom/nut/blehunter/ui/ei;-><init>(Lcom/nut/blehunter/ui/NutDetailActivity;Lcom/nut/blehunter/entity/Nut;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_1

    .line 679
    nop

    :pswitch_data_0
    .packed-switch -0x7892e246
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 760
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->h:Z

    if-eqz v0, :cond_0

    .line 761
    invoke-direct {p0}, Lcom/nut/blehunter/ui/NutDetailActivity;->s()V

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 764
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onBackPressed()V

    .line 765
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 558
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 560
    :sswitch_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-boolean v0, v0, Lcom/nut/blehunter/entity/Nut;->E:Z

    if-eqz v0, :cond_0

    .line 561
    invoke-direct {p0}, Lcom/nut/blehunter/ui/NutDetailActivity;->t()V

    goto :goto_0

    .line 566
    :sswitch_1
    invoke-direct {p0}, Lcom/nut/blehunter/ui/NutDetailActivity;->s()V

    .line 567
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->h:Z

    if-nez v0, :cond_0

    .line 3150
    const-string v0, "user_rating_find"

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/l;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 3151
    add-int/lit8 v0, v0, 0x1

    .line 3152
    const-string v1, "user_rating_find"

    invoke-static {p0, v1, v0}, Lcom/nut/blehunter/d/l;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 568
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/nut/blehunter/d/l;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/UserRatingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 570
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 571
    const-string v1, "name"

    iget-object v2, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 578
    :sswitch_2
    invoke-direct {p0}, Lcom/nut/blehunter/ui/NutDetailActivity;->p()V

    goto :goto_0

    .line 558
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d0093 -> :sswitch_0
        0x7f0d011f -> :sswitch_1
        0x7f0d0125 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x6

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 209
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 210
    const v0, 0x7f03003a

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutDetailActivity;->setContentView(I)V

    .line 211
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NutDetailActivity;->e()V

    .line 212
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NutDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nut"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    iput-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    .line 213
    if-eqz p1, :cond_0

    .line 214
    const-string v0, "ring"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->h:Z

    .line 1278
    :cond_0
    const v0, 0x7f0d0093

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/widget/CircleImageView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->b:Lcom/nut/blehunter/ui/widget/CircleImageView;

    .line 1279
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->b:Lcom/nut/blehunter/ui/widget/CircleImageView;

    invoke-virtual {v0, p0}, Lcom/nut/blehunter/ui/widget/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1280
    const v0, 0x7f0d011d

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->c:Landroid/widget/TextView;

    .line 1281
    const v0, 0x7f0d011f

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->d:Landroid/widget/ImageButton;

    .line 1282
    const v0, 0x7f0d0121

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->e:Landroid/widget/TextView;

    .line 1283
    const v0, 0x7f0d011e

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->f:Landroid/widget/ImageView;

    .line 1284
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1285
    const v0, 0x7f0d0120

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->j:Landroid/widget/ImageView;

    .line 1286
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 1287
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 1288
    const v0, 0x7f0d0123

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->l:Landroid/widget/LinearLayout;

    .line 1289
    const v0, 0x7f0d0124

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->m:Landroid/widget/TextView;

    .line 1483
    const-string v0, ""

    .line 1484
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget v1, v1, Lcom/nut/blehunter/entity/Nut;->K:I

    if-ne v1, v7, :cond_6

    .line 1485
    invoke-static {}, Lcom/nut/blehunter/provider/k;->b()Lcom/nut/blehunter/provider/k;

    move-result-object v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/provider/k;->b(Ljava/lang/String;)Lcom/nut/blehunter/entity/FindLocation;

    move-result-object v1

    .line 1486
    if-eqz v1, :cond_1

    .line 1487
    iget-object v0, v1, Lcom/nut/blehunter/entity/FindLocation;->c:Ljava/lang/String;

    :cond_1
    move-object v1, v0

    .line 1292
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1293
    const v0, 0x7f0d0122

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1296
    :cond_2
    const v0, 0x7f0d0125

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2365
    const v0, 0x7f04000c

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->g:Landroid/view/animation/Animation;

    .line 2366
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->g:Landroid/view/animation/Animation;

    new-instance v1, Lcom/nut/blehunter/ui/eb;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/eb;-><init>(Lcom/nut/blehunter/ui/NutDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2389
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NutDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2390
    new-array v1, v6, [F

    const/4 v2, 0x0

    aput v2, v1, v4

    const v2, 0x40490fdb    # (float)Math.PI

    int-to-float v3, v0

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    aput v2, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->k:Landroid/animation/ValueAnimator;

    .line 2391
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 2392
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->k:Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 2393
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->k:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2394
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NutDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0b0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2395
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->k:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/nut/blehunter/ui/ec;

    invoke-direct {v2, p0, v0}, Lcom/nut/blehunter/ui/ec;-><init>(Lcom/nut/blehunter/ui/NutDetailActivity;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1302
    invoke-direct {p0}, Lcom/nut/blehunter/ui/NutDetailActivity;->q()V

    .line 1304
    invoke-direct {p0}, Lcom/nut/blehunter/ui/NutDetailActivity;->r()V

    .line 1306
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget v1, v1, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/provider/m;->a(I)Lcom/nut/blehunter/entity/t;

    move-result-object v0

    .line 1307
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/nut/blehunter/entity/t;->b:Lcom/nut/blehunter/entity/e;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/nut/blehunter/entity/t;->b:Lcom/nut/blehunter/entity/e;

    iget-object v1, v1, Lcom/nut/blehunter/entity/e;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1309
    :try_start_0
    iget-object v0, v0, Lcom/nut/blehunter/entity/t;->b:Lcom/nut/blehunter/entity/e;

    iget-object v0, v0, Lcom/nut/blehunter/entity/e;->f:Ljava/lang/String;

    const-class v1, Lcom/nut/blehunter/entity/f;

    .line 3049
    invoke-static {v0, v1}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 1309
    check-cast v0, Lcom/nut/blehunter/entity/f;

    iput-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->n:Lcom/nut/blehunter/entity/f;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1313
    :goto_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->n:Lcom/nut/blehunter/entity/f;

    if-eqz v0, :cond_3

    .line 1314
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->n:Lcom/nut/blehunter/entity/f;

    iget-object v0, v0, Lcom/nut/blehunter/entity/f;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1315
    const-string v0, "background image url is %s"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->n:Lcom/nut/blehunter/entity/f;

    iget-object v2, v2, Lcom/nut/blehunter/entity/f;->a:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1316
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->n:Lcom/nut/blehunter/entity/f;

    iget-object v1, v1, Lcom/nut/blehunter/entity/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->s:Lcom/squareup/picasso/Target;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Lcom/squareup/picasso/Target;)V

    .line 218
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NutDetailActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v5, v8, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 220
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget v0, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget v0, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    if-eq v0, v6, :cond_4

    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget v0, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    if-ne v0, v7, :cond_5

    .line 222
    :cond_4
    invoke-direct {p0}, Lcom/nut/blehunter/ui/NutDetailActivity;->p()V

    .line 224
    :cond_5
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nut/blehunter/entity/o;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 225
    invoke-direct {p0}, Lcom/nut/blehunter/ui/NutDetailActivity;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->r:Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :goto_3
    return-void

    .line 1490
    :cond_6
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/nut/blehunter/b/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/nut/blehunter/b/a;

    move-result-object v1

    .line 1491
    if-eqz v1, :cond_7

    .line 1492
    invoke-virtual {v1}, Lcom/nut/blehunter/b/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 1493
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getNutLocation:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    move-object v1, v0

    goto/16 :goto_0

    .line 1311
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    goto/16 :goto_1

    .line 1318
    :cond_8
    iput-boolean v4, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->p:Z

    goto :goto_2

    .line 228
    :cond_9
    iput-object v8, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->r:Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->m:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 770
    if-ne p1, v5, :cond_0

    .line 771
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Lcom/nut/blehunter/provider/e;->a:Landroid/net/Uri;

    sget-object v3, Lcom/nut/blehunter/provider/l;->b:[Ljava/lang/String;

    const-string v4, "tag_id = ? "

    new-array v5, v5, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v6, v6, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v7

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    :goto_0
    return-object v0

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    if-nez v0, :cond_1

    const-string v0, ""

    move-object v1, v0

    .line 775
    :goto_1
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Lcom/nut/blehunter/provider/d;->a:Landroid/net/Uri;

    sget-object v3, Lcom/nut/blehunter/provider/k;->b:[Ljava/lang/String;

    const-string v4, "tag_id = ?"

    new-array v5, v5, [Ljava/lang/String;

    aput-object v1, v5, v7

    const-string v6, "find_time DESC"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 774
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    move-object v1, v0

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 633
    iput-object p1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->o:Landroid/view/Menu;

    .line 634
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-boolean v0, v0, Lcom/nut/blehunter/entity/Nut;->E:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0e000e

    .line 635
    :goto_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NutDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 636
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->p:Z

    if-eqz v0, :cond_1

    .line 637
    invoke-direct {p0}, Lcom/nut/blehunter/ui/NutDetailActivity;->c()V

    .line 642
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 634
    :cond_0
    const v0, 0x7f0e0007

    goto :goto_0

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-boolean v0, v0, Lcom/nut/blehunter/entity/Nut;->E:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0d0251

    .line 640
    :goto_2
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_1

    .line 639
    :cond_2
    const v0, 0x7f0d024b

    goto :goto_2
.end method

.method public synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 77
    check-cast p2, Landroid/database/Cursor;

    .line 4784
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4785
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4786
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    invoke-static {p2}, Lcom/nut/blehunter/provider/l;->a(Landroid/database/Cursor;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v0

    .line 4788
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget v1, v1, Lcom/nut/blehunter/entity/Nut;->L:I

    iput v1, v0, Lcom/nut/blehunter/entity/Nut;->L:I

    .line 4789
    iput-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    .line 4790
    invoke-direct {p0}, Lcom/nut/blehunter/ui/NutDetailActivity;->q()V

    .line 4791
    invoke-direct {p0}, Lcom/nut/blehunter/ui/NutDetailActivity;->r()V

    .line 4793
    :cond_0
    :goto_0
    return-void

    .line 4794
    :cond_1
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NutDetailActivity;->finish()V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 802
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 647
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 656
    :goto_0
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 649
    :sswitch_0
    invoke-direct {p0}, Lcom/nut/blehunter/ui/NutDetailActivity;->t()V

    goto :goto_0

    .line 3666
    :sswitch_1
    const v0, 0x7f0600ae

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/NutDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3667
    const v1, 0x7f0600de

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/NutDetailActivity;->getString(I)Ljava/lang/String;

    .line 3668
    new-instance v1, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v1

    const v2, 0x7f060085

    invoke-virtual {v1, v2, p0}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v1

    const v2, 0x7f060083

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v1

    .line 3673
    iget-object v2, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->a:Lcom/nut/blehunter/entity/Nut;

    invoke-static {v2, v0, v1}, Lcom/nut/blehunter/ui/b/a/g;->a(Lcom/nut/blehunter/entity/Nut;Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/b;)Lcom/nut/blehunter/ui/b/a/g;

    move-result-object v0

    const-string v1, "sub_delete_shared"

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/g;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    .line 653
    const-string v0, "item_accepted_deleted"

    .line 4281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 647
    :sswitch_data_0
    .sparse-switch
        0x7f0d024b -> :sswitch_1
        0x7f0d0251 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 748
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NutDetailActivity;->g()V

    .line 749
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onPause()V

    .line 750
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 742
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onResume()V

    .line 743
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NutDetailActivity;->f()V

    .line 744
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 627
    const-string v0, "ring"

    iget-boolean v1, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->h:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 628
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 629
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 720
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onStart()V

    .line 721
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->q:Z

    if-eqz v0, :cond_1

    .line 722
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->n:Lcom/nut/blehunter/entity/f;

    if-eqz v0, :cond_0

    .line 723
    new-instance v0, Lcom/nut/blehunter/ui/ea;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/ea;-><init>(Lcom/nut/blehunter/ui/NutDetailActivity;)V

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 736
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->q:Z

    .line 738
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 754
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/NutDetailActivity;->q:Z

    .line 755
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onStop()V

    .line 756
    return-void
.end method
