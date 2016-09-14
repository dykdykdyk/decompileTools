.class public Lcom/nut/blehunter/ui/WelcomeActivity;
.super Landroid/app/Activity;
.source "WelcomeActivity.java"


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/WelcomeActivity;->a:Landroid/util/SparseArray;

    return-void
.end method

.method private a(II)V
    .locals 4

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/nut/blehunter/ui/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2055
    iget-object v0, p0, Lcom/nut/blehunter/ui/WelcomeActivity;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 2056
    if-eqz v0, :cond_0

    .line 2057
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 51
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 52
    return-void

    .line 2059
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2060
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2061
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2062
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2063
    iget-object v2, p0, Lcom/nut/blehunter/ui/WelcomeActivity;->a:Landroid/util/SparseArray;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 2066
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f03004c

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/WelcomeActivity;->setContentView(I)V

    .line 1039
    const v0, 0x7f0d0155

    const v1, 0x7f02023b

    invoke-direct {p0, v0, v1}, Lcom/nut/blehunter/ui/WelcomeActivity;->a(II)V

    .line 1040
    const v0, 0x7f0d0157

    const v1, 0x7f02023c

    invoke-direct {p0, v0, v1}, Lcom/nut/blehunter/ui/WelcomeActivity;->a(II)V

    .line 1041
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/WelcomeActivity;->b:Landroid/os/Handler;

    .line 1042
    iget-object v0, p0, Lcom/nut/blehunter/ui/WelcomeActivity;->b:Landroid/os/Handler;

    new-instance v1, Lcom/nut/blehunter/ui/gs;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/gs;-><init>(Lcom/nut/blehunter/ui/WelcomeActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 30
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 34
    .line 1070
    iget-object v0, p0, Lcom/nut/blehunter/ui/WelcomeActivity;->a:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    .line 1073
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/WelcomeActivity;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1074
    iget-object v0, p0, Lcom/nut/blehunter/ui/WelcomeActivity;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 1075
    iget-object v2, p0, Lcom/nut/blehunter/ui/WelcomeActivity;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1076
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 1077
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1078
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 1079
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1080
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1081
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1073
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1084
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/WelcomeActivity;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 35
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 36
    return-void
.end method
