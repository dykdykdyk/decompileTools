.class public Lcom/nut/blehunter/ui/GuidePagerActivity;
.super Landroid/support/v7/a/s;
.source "GuidePagerActivity.java"


# instance fields
.field private final a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/ImageView;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v7/a/s;-><init>()V

    .line 25
    const/16 v0, 0xc

    iput v0, p0, Lcom/nut/blehunter/ui/GuidePagerActivity;->a:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/GuidePagerActivity;->b:Ljava/util/List;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/nut/blehunter/ui/GuidePagerActivity;->e:I

    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/GuidePagerActivity;I)I
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/nut/blehunter/ui/GuidePagerActivity;->d:I

    return p1
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/GuidePagerActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nut/blehunter/ui/GuidePagerActivity;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/nut/blehunter/ui/GuidePagerActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/GuidePagerActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nut/blehunter/ui/GuidePagerActivity;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/GuidePagerActivity;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1111
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/nut/blehunter/ui/GuidePagerActivity;->d:I

    iget v2, p0, Lcom/nut/blehunter/ui/GuidePagerActivity;->e:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/nut/blehunter/ui/GuidePagerActivity;->d:I

    mul-int/2addr v2, p1

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1112
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1113
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1114
    iget-object v1, p0, Lcom/nut/blehunter/ui/GuidePagerActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 23
    return-void
.end method

.method static synthetic c(Lcom/nut/blehunter/ui/GuidePagerActivity;I)I
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/nut/blehunter/ui/GuidePagerActivity;->e:I

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 47
    invoke-super {p0, p1}, Landroid/support/v7/a/s;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/GuidePagerActivity;->setContentView(I)V

    .line 1058
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030074

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1059
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030075

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1060
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030076

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1061
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030077

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1062
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030078

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1063
    iget-object v5, p0, Lcom/nut/blehunter/ui/GuidePagerActivity;->b:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1064
    iget-object v0, p0, Lcom/nut/blehunter/ui/GuidePagerActivity;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1065
    iget-object v0, p0, Lcom/nut/blehunter/ui/GuidePagerActivity;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1066
    iget-object v0, p0, Lcom/nut/blehunter/ui/GuidePagerActivity;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1067
    iget-object v0, p0, Lcom/nut/blehunter/ui/GuidePagerActivity;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1069
    const v0, 0x7f0d00c6

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/GuidePagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/GuidePagerActivity;->c:Landroid/widget/ImageView;

    .line 1070
    iget-object v0, p0, Lcom/nut/blehunter/ui/GuidePagerActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/ax;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/ax;-><init>(Lcom/nut/blehunter/ui/GuidePagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1079
    new-instance v1, Lcom/nut/blehunter/ui/a/n;

    iget-object v0, p0, Lcom/nut/blehunter/ui/GuidePagerActivity;->b:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/nut/blehunter/ui/a/n;-><init>(Ljava/util/List;)V

    .line 1080
    const v0, 0x7f0d00be

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/GuidePagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 1081
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1082
    new-instance v1, Lcom/nut/blehunter/ui/ay;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/ay;-><init>(Lcom/nut/blehunter/ui/GuidePagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1100
    const v0, 0x7f0d00bf

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/GuidePagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1101
    new-instance v1, Lcom/nut/blehunter/ui/az;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/az;-><init>(Lcom/nut/blehunter/ui/GuidePagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Landroid/support/v7/a/s;->onDestroy()V

    .line 55
    return-void
.end method
