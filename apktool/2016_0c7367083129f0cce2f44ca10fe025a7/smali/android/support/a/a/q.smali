.class final Landroid/support/a/a/q;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "VectorDrawableCompat.java"


# instance fields
.field a:I

.field b:Landroid/support/a/a/p;

.field c:Landroid/content/res/ColorStateList;

.field d:Landroid/graphics/PorterDuff$Mode;

.field e:Z

.field f:Landroid/graphics/Bitmap;

.field g:Landroid/content/res/ColorStateList;

.field h:Landroid/graphics/PorterDuff$Mode;

.field i:I

.field j:Z

.field k:Z

.field l:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 876
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 770
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/a/a/q;->c:Landroid/content/res/ColorStateList;

    .line 771
    sget-object v0, Landroid/support/a/a/k;->b:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/a/a/q;->d:Landroid/graphics/PorterDuff$Mode;

    .line 877
    new-instance v0, Landroid/support/a/a/p;

    invoke-direct {v0}, Landroid/support/a/a/p;-><init>()V

    iput-object v0, p0, Landroid/support/a/a/q;->b:Landroid/support/a/a/p;

    .line 878
    return-void
.end method

.method public constructor <init>(Landroid/support/a/a/q;)V
    .locals 3

    .prologue
    .line 788
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 770
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/a/a/q;->c:Landroid/content/res/ColorStateList;

    .line 771
    sget-object v0, Landroid/support/a/a/k;->b:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/a/a/q;->d:Landroid/graphics/PorterDuff$Mode;

    .line 789
    if-eqz p1, :cond_2

    .line 790
    iget v0, p1, Landroid/support/a/a/q;->a:I

    iput v0, p0, Landroid/support/a/a/q;->a:I

    .line 791
    new-instance v0, Landroid/support/a/a/p;

    iget-object v1, p1, Landroid/support/a/a/q;->b:Landroid/support/a/a/p;

    invoke-direct {v0, v1}, Landroid/support/a/a/p;-><init>(Landroid/support/a/a/p;)V

    iput-object v0, p0, Landroid/support/a/a/q;->b:Landroid/support/a/a/p;

    .line 792
    iget-object v0, p1, Landroid/support/a/a/q;->b:Landroid/support/a/a/p;

    invoke-static {v0}, Landroid/support/a/a/p;->b(Landroid/support/a/a/p;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Landroid/support/a/a/q;->b:Landroid/support/a/a/p;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Landroid/support/a/a/q;->b:Landroid/support/a/a/p;

    invoke-static {v2}, Landroid/support/a/a/p;->b(Landroid/support/a/a/p;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-static {v0, v1}, Landroid/support/a/a/p;->a(Landroid/support/a/a/p;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 795
    :cond_0
    iget-object v0, p1, Landroid/support/a/a/q;->b:Landroid/support/a/a/p;

    invoke-static {v0}, Landroid/support/a/a/p;->c(Landroid/support/a/a/p;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 796
    iget-object v0, p0, Landroid/support/a/a/q;->b:Landroid/support/a/a/p;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Landroid/support/a/a/q;->b:Landroid/support/a/a/p;

    invoke-static {v2}, Landroid/support/a/a/p;->c(Landroid/support/a/a/p;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-static {v0, v1}, Landroid/support/a/a/p;->b(Landroid/support/a/a/p;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 798
    :cond_1
    iget-object v0, p1, Landroid/support/a/a/q;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/support/a/a/q;->c:Landroid/content/res/ColorStateList;

    .line 799
    iget-object v0, p1, Landroid/support/a/a/q;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/a/a/q;->d:Landroid/graphics/PorterDuff$Mode;

    .line 800
    iget-boolean v0, p1, Landroid/support/a/a/q;->e:Z

    iput-boolean v0, p0, Landroid/support/a/a/q;->e:Z

    .line 802
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    .prologue
    .line 833
    iget-object v0, p0, Landroid/support/a/a/q;->f:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 834
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/support/a/a/q;->f:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 835
    iget-object v1, p0, Landroid/support/a/a/q;->b:Landroid/support/a/a/p;

    invoke-virtual {v1, v0, p1, p2}, Landroid/support/a/a/p;->a(Landroid/graphics/Canvas;II)V

    .line 836
    return-void
.end method

.method public final getChangingConfigurations()I
    .locals 1

    .prologue
    .line 892
    iget v0, p0, Landroid/support/a/a/q;->a:I

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 882
    new-instance v0, Landroid/support/a/a/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/a/a/k;-><init>(Landroid/support/a/a/q;B)V

    return-object v0
.end method

.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 887
    new-instance v0, Landroid/support/a/a/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/a/a/k;-><init>(Landroid/support/a/a/q;B)V

    return-object v0
.end method
