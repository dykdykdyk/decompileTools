.class public Landroid/support/v7/a/bi;
.super Landroid/support/v7/a/a;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroid/support/v7/widget/i;


# static fields
.field static final synthetic h:Z

.field private static final i:Landroid/view/animation/Interpolator;

.field private static final j:Landroid/view/animation/Interpolator;

.field private static final k:Z


# instance fields
.field private A:Z

.field private B:I

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Landroid/support/v7/view/l;

.field private I:Z

.field a:Landroid/support/v7/a/bm;

.field b:Landroid/support/v7/view/b;

.field c:Landroid/support/v7/view/c;

.field d:Z

.field final e:Landroid/support/v4/view/ViewPropertyAnimatorListener;

.field final f:Landroid/support/v4/view/ViewPropertyAnimatorListener;

.field final g:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

.field private l:Landroid/content/Context;

.field private m:Landroid/content/Context;

.field private n:Landroid/app/Activity;

.field private o:Landroid/app/Dialog;

.field private p:Landroid/support/v7/widget/ActionBarOverlayLayout;

.field private q:Landroid/support/v7/widget/ActionBarContainer;

.field private r:Landroid/support/v7/widget/bv;

.field private s:Landroid/support/v7/widget/ActionBarContextView;

.field private t:Landroid/view/View;

.field private u:Landroid/support/v7/widget/fd;

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private w:I

.field private x:Z

.field private y:Z

.field private z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    const-class v0, Landroid/support/v7/a/bi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/support/v7/a/bi;->h:Z

    .line 78
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v7/a/bi;->i:Landroid/view/animation/Interpolator;

    .line 79
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v7/a/bi;->j:Landroid/view/animation/Interpolator;

    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Landroid/support/v7/a/bi;->k:Z

    return-void

    :cond_0
    move v0, v2

    .line 74
    goto :goto_0

    :cond_1
    move v1, v2

    .line 84
    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 168
    invoke-direct {p0}, Landroid/support/v7/a/a;-><init>()V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/a/bi;->v:Ljava/util/ArrayList;

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/a/bi;->w:I

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/a/bi;->z:Ljava/util/ArrayList;

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/a/bi;->B:I

    .line 123
    iput-boolean v1, p0, Landroid/support/v7/a/bi;->C:Z

    .line 128
    iput-boolean v1, p0, Landroid/support/v7/a/bi;->G:Z

    .line 134
    new-instance v0, Landroid/support/v7/a/bj;

    invoke-direct {v0, p0}, Landroid/support/v7/a/bj;-><init>(Landroid/support/v7/a/bi;)V

    iput-object v0, p0, Landroid/support/v7/a/bi;->e:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 151
    new-instance v0, Landroid/support/v7/a/bk;

    invoke-direct {v0, p0}, Landroid/support/v7/a/bk;-><init>(Landroid/support/v7/a/bi;)V

    iput-object v0, p0, Landroid/support/v7/a/bi;->f:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 159
    new-instance v0, Landroid/support/v7/a/bl;

    invoke-direct {v0, p0}, Landroid/support/v7/a/bl;-><init>(Landroid/support/v7/a/bi;)V

    iput-object v0, p0, Landroid/support/v7/a/bi;->g:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    .line 169
    iput-object p1, p0, Landroid/support/v7/a/bi;->n:Landroid/app/Activity;

    .line 170
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 172
    invoke-direct {p0, v0}, Landroid/support/v7/a/bi;->a(Landroid/view/View;)V

    .line 173
    if-nez p2, :cond_0

    .line 174
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/a/bi;->t:Landroid/view/View;

    .line 176
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 178
    invoke-direct {p0}, Landroid/support/v7/a/a;-><init>()V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/a/bi;->v:Ljava/util/ArrayList;

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/a/bi;->w:I

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/a/bi;->z:Ljava/util/ArrayList;

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/a/bi;->B:I

    .line 123
    iput-boolean v1, p0, Landroid/support/v7/a/bi;->C:Z

    .line 128
    iput-boolean v1, p0, Landroid/support/v7/a/bi;->G:Z

    .line 134
    new-instance v0, Landroid/support/v7/a/bj;

    invoke-direct {v0, p0}, Landroid/support/v7/a/bj;-><init>(Landroid/support/v7/a/bi;)V

    iput-object v0, p0, Landroid/support/v7/a/bi;->e:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 151
    new-instance v0, Landroid/support/v7/a/bk;

    invoke-direct {v0, p0}, Landroid/support/v7/a/bk;-><init>(Landroid/support/v7/a/bi;)V

    iput-object v0, p0, Landroid/support/v7/a/bi;->f:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 159
    new-instance v0, Landroid/support/v7/a/bl;

    invoke-direct {v0, p0}, Landroid/support/v7/a/bl;-><init>(Landroid/support/v7/a/bi;)V

    iput-object v0, p0, Landroid/support/v7/a/bi;->g:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    .line 179
    iput-object p1, p0, Landroid/support/v7/a/bi;->o:Landroid/app/Dialog;

    .line 180
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/a/bi;->a(Landroid/view/View;)V

    .line 181
    return-void
.end method

.method private a(II)V
    .locals 4

    .prologue
    .line 460
    iget-object v0, p0, Landroid/support/v7/a/bi;->r:Landroid/support/v7/widget/bv;

    invoke-interface {v0}, Landroid/support/v7/widget/bv;->o()I

    move-result v0

    .line 461
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 462
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/a/bi;->x:Z

    .line 464
    :cond_0
    iget-object v1, p0, Landroid/support/v7/a/bi;->r:Landroid/support/v7/widget/bv;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, Landroid/support/v7/widget/bv;->c(I)V

    .line 465
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 193
    sget v0, Landroid/support/v7/appcompat/R$id;->decor_content_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Landroid/support/v7/a/bi;->p:Landroid/support/v7/widget/ActionBarOverlayLayout;

    .line 194
    iget-object v0, p0, Landroid/support/v7/a/bi;->p:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Landroid/support/v7/a/bi;->p:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroid/support/v7/widget/i;)V

    .line 197
    :cond_0
    sget v0, Landroid/support/v7/appcompat/R$id;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2235
    instance-of v3, v0, Landroid/support/v7/widget/bv;

    if-eqz v3, :cond_2

    .line 2236
    check-cast v0, Landroid/support/v7/widget/bv;

    .line 197
    :goto_0
    iput-object v0, p0, Landroid/support/v7/a/bi;->r:Landroid/support/v7/widget/bv;

    .line 198
    sget v0, Landroid/support/v7/appcompat/R$id;->action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarContextView;

    iput-object v0, p0, Landroid/support/v7/a/bi;->s:Landroid/support/v7/widget/ActionBarContextView;

    .line 200
    sget v0, Landroid/support/v7/appcompat/R$id;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarContainer;

    iput-object v0, p0, Landroid/support/v7/a/bi;->q:Landroid/support/v7/widget/ActionBarContainer;

    .line 203
    iget-object v0, p0, Landroid/support/v7/a/bi;->r:Landroid/support/v7/widget/bv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/a/bi;->s:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/a/bi;->q:Landroid/support/v7/widget/ActionBarContainer;

    if-nez v0, :cond_5

    .line 204
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be used with a compatible window decor layout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2237
    :cond_2
    instance-of v3, v0, Landroid/support/v7/widget/Toolbar;

    if-eqz v3, :cond_3

    .line 2238
    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getWrapper()Landroid/support/v7/widget/bv;

    move-result-object v0

    goto :goto_0

    .line 2240
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t make a decor toolbar out of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2241
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v0, "null"

    goto :goto_1

    .line 208
    :cond_5
    iget-object v0, p0, Landroid/support/v7/a/bi;->r:Landroid/support/v7/widget/bv;

    invoke-interface {v0}, Landroid/support/v7/widget/bv;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/a/bi;->l:Landroid/content/Context;

    .line 211
    iget-object v0, p0, Landroid/support/v7/a/bi;->r:Landroid/support/v7/widget/bv;

    invoke-interface {v0}, Landroid/support/v7/widget/bv;->o()I

    move-result v0

    .line 212
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    move v0, v1

    .line 213
    :goto_2
    if-eqz v0, :cond_6

    .line 214
    iput-boolean v1, p0, Landroid/support/v7/a/bi;->x:Z

    .line 217
    :cond_6
    iget-object v0, p0, Landroid/support/v7/a/bi;->l:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/view/a;->a(Landroid/content/Context;)Landroid/support/v7/view/a;

    move-result-object v0

    .line 3108
    iget-object v3, v0, Landroid/support/v7/view/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 219
    invoke-virtual {v0}, Landroid/support/v7/view/a;->b()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/a/bi;->f(Z)V

    .line 221
    iget-object v0, p0, Landroid/support/v7/a/bi;->l:Landroid/content/Context;

    const/4 v3, 0x0

    sget-object v4, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    sget v5, Landroid/support/v7/appcompat/R$attr;->actionBarStyle:I

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 224
    sget v3, Landroid/support/v7/appcompat/R$styleable;->ActionBar_hideOnContentScroll:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3705
    iget-object v3, p0, Landroid/support/v7/a/bi;->p:Landroid/support/v7/widget/ActionBarOverlayLayout;

    .line 4186
    iget-boolean v3, v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->a:Z

    .line 3705
    if-nez v3, :cond_8

    .line 3706
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move v0, v2

    .line 212
    goto :goto_2

    .line 3709
    :cond_8
    iput-boolean v1, p0, Landroid/support/v7/a/bi;->d:Z

    .line 3710
    iget-object v3, p0, Landroid/support/v7/a/bi;->p:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 227
    :cond_9
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ActionBar_elevation:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 228
    if-eqz v1, :cond_a

    .line 229
    int-to-float v1, v1

    .line 4247
    iget-object v2, p0, Landroid/support/v7/a/bi;->q:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v2, v1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 231
    :cond_a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 232
    return-void
.end method

.method static synthetic a(Landroid/support/v7/a/bi;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Landroid/support/v7/a/bi;->C:Z

    return v0
.end method

.method static synthetic a(ZZ)Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/support/v7/a/bi;->a(ZZZ)Z

    move-result v0

    return v0
.end method

.method private static a(ZZZ)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 734
    if-eqz p2, :cond_1

    .line 739
    :cond_0
    :goto_0
    return v0

    .line 736
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_0

    .line 737
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Landroid/support/v7/a/bi;)Landroid/view/View;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Landroid/support/v7/a/bi;->t:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/a/bi;)Landroid/support/v7/widget/ActionBarContainer;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Landroid/support/v7/a/bi;->q:Landroid/support/v7/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/a/bi;)Landroid/support/v7/view/l;
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/a/bi;->H:Landroid/support/v7/view/l;

    return-object v0
.end method

.method static synthetic e(Landroid/support/v7/a/bi;)Landroid/support/v7/widget/ActionBarOverlayLayout;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Landroid/support/v7/a/bi;->p:Landroid/support/v7/widget/ActionBarOverlayLayout;

    return-object v0
.end method

.method private f(Z)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 260
    iput-boolean p1, p0, Landroid/support/v7/a/bi;->A:Z

    .line 262
    iget-boolean v0, p0, Landroid/support/v7/a/bi;->A:Z

    if-nez v0, :cond_1

    .line 263
    iget-object v0, p0, Landroid/support/v7/a/bi;->r:Landroid/support/v7/widget/bv;

    invoke-interface {v0, v3}, Landroid/support/v7/widget/bv;->a(Landroid/support/v7/widget/fd;)V

    .line 264
    iget-object v0, p0, Landroid/support/v7/a/bi;->q:Landroid/support/v7/widget/ActionBarContainer;

    iget-object v3, p0, Landroid/support/v7/a/bi;->u:Landroid/support/v7/widget/fd;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/widget/fd;)V

    .line 4492
    :goto_0
    iget-object v0, p0, Landroid/support/v7/a/bi;->r:Landroid/support/v7/widget/bv;

    invoke-interface {v0}, Landroid/support/v7/widget/bv;->p()I

    move-result v0

    .line 269
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 270
    :goto_1
    iget-object v3, p0, Landroid/support/v7/a/bi;->u:Landroid/support/v7/widget/fd;

    if-eqz v3, :cond_0

    .line 271
    if-eqz v0, :cond_3

    .line 272
    iget-object v3, p0, Landroid/support/v7/a/bi;->u:Landroid/support/v7/widget/fd;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/fd;->setVisibility(I)V

    .line 273
    iget-object v3, p0, Landroid/support/v7/a/bi;->p:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v3, :cond_0

    .line 274
    iget-object v3, p0, Landroid/support/v7/a/bi;->p:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 280
    :cond_0
    :goto_2
    iget-object v4, p0, Landroid/support/v7/a/bi;->r:Landroid/support/v7/widget/bv;

    iget-boolean v3, p0, Landroid/support/v7/a/bi;->A:Z

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    move v3, v1

    :goto_3
    invoke-interface {v4, v3}, Landroid/support/v7/widget/bv;->a(Z)V

    .line 281
    iget-object v3, p0, Landroid/support/v7/a/bi;->p:Landroid/support/v7/widget/ActionBarOverlayLayout;

    iget-boolean v4, p0, Landroid/support/v7/a/bi;->A:Z

    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    :goto_4
    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 282
    return-void

    .line 266
    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/bi;->q:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/widget/fd;)V

    .line 267
    iget-object v0, p0, Landroid/support/v7/a/bi;->r:Landroid/support/v7/widget/bv;

    iget-object v3, p0, Landroid/support/v7/a/bi;->u:Landroid/support/v7/widget/fd;

    invoke-interface {v0, v3}, Landroid/support/v7/widget/bv;->a(Landroid/support/v7/widget/fd;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 269
    goto :goto_1

    .line 277
    :cond_3
    iget-object v3, p0, Landroid/support/v7/a/bi;->u:Landroid/support/v7/widget/fd;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/fd;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v3, v2

    .line 280
    goto :goto_3

    :cond_5
    move v1, v2

    .line 281
    goto :goto_4
.end method

.method static synthetic f(Landroid/support/v7/a/bi;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Landroid/support/v7/a/bi;->D:Z

    return v0
.end method

.method private g(Z)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 745
    iget-boolean v0, p0, Landroid/support/v7/a/bi;->D:Z

    iget-boolean v1, p0, Landroid/support/v7/a/bi;->E:Z

    iget-boolean v2, p0, Landroid/support/v7/a/bi;->F:Z

    invoke-static {v0, v1, v2}, Landroid/support/v7/a/bi;->a(ZZZ)Z

    move-result v0

    .line 748
    if-eqz v0, :cond_7

    .line 749
    iget-boolean v0, p0, Landroid/support/v7/a/bi;->G:Z

    if-nez v0, :cond_4

    .line 750
    iput-boolean v5, p0, Landroid/support/v7/a/bi;->G:Z

    .line 4762
    iget-object v0, p0, Landroid/support/v7/a/bi;->H:Landroid/support/v7/view/l;

    if-eqz v0, :cond_0

    .line 4763
    iget-object v0, p0, Landroid/support/v7/a/bi;->H:Landroid/support/v7/view/l;

    invoke-virtual {v0}, Landroid/support/v7/view/l;->b()V

    .line 4765
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/bi;->q:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/ActionBarContainer;->setVisibility(I)V

    .line 4767
    iget v0, p0, Landroid/support/v7/a/bi;->B:I

    if-nez v0, :cond_5

    sget-boolean v0, Landroid/support/v7/a/bi;->k:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/support/v7/a/bi;->I:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_5

    .line 4770
    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/bi;->q:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 4771
    iget-object v0, p0, Landroid/support/v7/a/bi;->q:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    .line 4772
    if-eqz p1, :cond_2

    .line 4773
    new-array v1, v7, [I

    fill-array-data v1, :array_0

    .line 4774
    iget-object v2, p0, Landroid/support/v7/a/bi;->q:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 4775
    aget v1, v1, v5

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 4777
    :cond_2
    iget-object v1, p0, Landroid/support/v7/a/bi;->q:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 4778
    new-instance v1, Landroid/support/v7/view/l;

    invoke-direct {v1}, Landroid/support/v7/view/l;-><init>()V

    .line 4779
    iget-object v2, p0, Landroid/support/v7/a/bi;->q:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 4780
    iget-object v3, p0, Landroid/support/v7/a/bi;->g:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 4781
    invoke-virtual {v1, v2}, Landroid/support/v7/view/l;->a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/view/l;

    .line 4782
    iget-boolean v2, p0, Landroid/support/v7/a/bi;->C:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/a/bi;->t:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 4783
    iget-object v2, p0, Landroid/support/v7/a/bi;->t:Landroid/view/View;

    invoke-static {v2, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 4784
    iget-object v0, p0, Landroid/support/v7/a/bi;->t:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/view/l;->a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/view/l;

    .line 4786
    :cond_3
    sget-object v0, Landroid/support/v7/a/bi;->j:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0}, Landroid/support/v7/view/l;->a(Landroid/view/animation/Interpolator;)Landroid/support/v7/view/l;

    .line 4787
    invoke-virtual {v1}, Landroid/support/v7/view/l;->c()Landroid/support/v7/view/l;

    .line 4795
    iget-object v0, p0, Landroid/support/v7/a/bi;->f:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    invoke-virtual {v1, v0}, Landroid/support/v7/view/l;->a(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v7/view/l;

    .line 4796
    iput-object v1, p0, Landroid/support/v7/a/bi;->H:Landroid/support/v7/view/l;

    .line 4797
    invoke-virtual {v1}, Landroid/support/v7/view/l;->a()V

    .line 4806
    :goto_0
    iget-object v0, p0, Landroid/support/v7/a/bi;->p:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_4

    .line 4807
    iget-object v0, p0, Landroid/support/v7/a/bi;->p:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 4838
    :cond_4
    :goto_1
    return-void

    .line 4799
    :cond_5
    iget-object v0, p0, Landroid/support/v7/a/bi;->q:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 4800
    iget-object v0, p0, Landroid/support/v7/a/bi;->q:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 4801
    iget-boolean v0, p0, Landroid/support/v7/a/bi;->C:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/a/bi;->t:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 4802
    iget-object v0, p0, Landroid/support/v7/a/bi;->t:Landroid/view/View;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 4804
    :cond_6
    iget-object v0, p0, Landroid/support/v7/a/bi;->f:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    goto :goto_0

    .line 754
    :cond_7
    iget-boolean v0, p0, Landroid/support/v7/a/bi;->G:Z

    if-eqz v0, :cond_4

    .line 755
    iput-boolean v6, p0, Landroid/support/v7/a/bi;->G:Z

    .line 4812
    iget-object v0, p0, Landroid/support/v7/a/bi;->H:Landroid/support/v7/view/l;

    if-eqz v0, :cond_8

    .line 4813
    iget-object v0, p0, Landroid/support/v7/a/bi;->H:Landroid/support/v7/view/l;

    invoke-virtual {v0}, Landroid/support/v7/view/l;->b()V

    .line 4816
    :cond_8
    iget v0, p0, Landroid/support/v7/a/bi;->B:I

    if-nez v0, :cond_c

    sget-boolean v0, Landroid/support/v7/a/bi;->k:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroid/support/v7/a/bi;->I:Z

    if-nez v0, :cond_9

    if-eqz p1, :cond_c

    .line 4818
    :cond_9
    iget-object v0, p0, Landroid/support/v7/a/bi;->q:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 4819
    iget-object v0, p0, Landroid/support/v7/a/bi;->q:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 4820
    new-instance v1, Landroid/support/v7/view/l;

    invoke-direct {v1}, Landroid/support/v7/view/l;-><init>()V

    .line 4821
    iget-object v0, p0, Landroid/support/v7/a/bi;->q:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    .line 4822
    if-eqz p1, :cond_a

    .line 4823
    new-array v2, v7, [I

    fill-array-data v2, :array_1

    .line 4824
    iget-object v3, p0, Landroid/support/v7/a/bi;->q:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 4825
    aget v2, v2, v5

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 4827
    :cond_a
    iget-object v2, p0, Landroid/support/v7/a/bi;->q:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 4828
    iget-object v3, p0, Landroid/support/v7/a/bi;->g:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 4829
    invoke-virtual {v1, v2}, Landroid/support/v7/view/l;->a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/view/l;

    .line 4830
    iget-boolean v2, p0, Landroid/support/v7/a/bi;->C:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroid/support/v7/a/bi;->t:Landroid/view/View;

    if-eqz v2, :cond_b

    .line 4831
    iget-object v2, p0, Landroid/support/v7/a/bi;->t:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/view/l;->a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/view/l;

    .line 4833
    :cond_b
    sget-object v0, Landroid/support/v7/a/bi;->i:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0}, Landroid/support/v7/view/l;->a(Landroid/view/animation/Interpolator;)Landroid/support/v7/view/l;

    .line 4834
    invoke-virtual {v1}, Landroid/support/v7/view/l;->c()Landroid/support/v7/view/l;

    .line 4835
    iget-object v0, p0, Landroid/support/v7/a/bi;->e:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    invoke-virtual {v1, v0}, Landroid/support/v7/view/l;->a(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v7/view/l;

    .line 4836
    iput-object v1, p0, Landroid/support/v7/a/bi;->H:Landroid/support/v7/view/l;

    .line 4837
    invoke-virtual {v1}, Landroid/support/v7/view/l;->a()V

    goto/16 :goto_1

    .line 4839
    :cond_c
    iget-object v0, p0, Landroid/support/v7/a/bi;->e:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    goto/16 :goto_1

    .line 4773
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 4823
    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic g(Landroid/support/v7/a/bi;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Landroid/support/v7/a/bi;->E:Z

    return v0
.end method

.method static synthetic h(Landroid/support/v7/a/bi;)Landroid/support/v7/widget/ActionBarContextView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Landroid/support/v7/a/bi;->s:Landroid/support/v7/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic i(Landroid/support/v7/a/bi;)Landroid/support/v7/widget/bv;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Landroid/support/v7/a/bi;->r:Landroid/support/v7/widget/bv;

    return-object v0
.end method

.method static synthetic j(Landroid/support/v7/a/bi;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Landroid/support/v7/a/bi;->l:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/support/v7/view/c;)Landroid/support/v7/view/b;
    .locals 3

    .prologue
    .line 500
    iget-object v0, p0, Landroid/support/v7/a/bi;->a:Landroid/support/v7/a/bm;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Landroid/support/v7/a/bi;->a:Landroid/support/v7/a/bm;

    invoke-virtual {v0}, Landroid/support/v7/a/bm;->c()V

    .line 504
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/bi;->p:Landroid/support/v7/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 505
    iget-object v0, p0, Landroid/support/v7/a/bi;->s:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->b()V

    .line 506
    new-instance v0, Landroid/support/v7/a/bm;

    iget-object v1, p0, Landroid/support/v7/a/bi;->s:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/support/v7/a/bm;-><init>(Landroid/support/v7/a/bi;Landroid/content/Context;Landroid/support/v7/view/c;)V

    .line 507
    invoke-virtual {v0}, Landroid/support/v7/a/bm;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 510
    iput-object v0, p0, Landroid/support/v7/a/bi;->a:Landroid/support/v7/a/bm;

    .line 511
    invoke-virtual {v0}, Landroid/support/v7/a/bm;->d()V

    .line 512
    iget-object v1, p0, Landroid/support/v7/a/bi;->s:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ActionBarContextView;->a(Landroid/support/v7/view/b;)V

    .line 513
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v7/a/bi;->e(Z)V

    .line 514
    iget-object v1, p0, Landroid/support/v7/a/bi;->s:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 517
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 377
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Landroid/support/v7/a/bi;->a(II)V

    .line 378
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 317
    iput p1, p0, Landroid/support/v7/a/bi;->B:I

    .line 318
    return-void
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Landroid/support/v7/a/bi;->l:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/view/a;->a(Landroid/content/Context;)Landroid/support/v7/view/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/a;->b()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/a/bi;->f(Z)V

    .line 257
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Landroid/support/v7/a/bi;->r:Landroid/support/v7/widget/bv;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/bv;->a(Ljava/lang/CharSequence;)V

    .line 436
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1364
    iget-boolean v0, p0, Landroid/support/v7/a/bi;->x:Z

    if-nez v0, :cond_0

    .line 7372
    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/support/v7/a/bi;->a(II)V

    .line 1367
    :cond_0
    return-void

    .line 7372
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    const/16 v0, 0x10

    .line 382
    invoke-direct {p0, v0, v0}, Landroid/support/v7/a/bi;->a(II)V

    .line 383
    return-void
.end method

.method public final b(Z)V
    .locals 1

    .prologue
    .line 328
    iput-boolean p1, p0, Landroid/support/v7/a/bi;->I:Z

    .line 329
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/a/bi;->H:Landroid/support/v7/view/l;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Landroid/support/v7/a/bi;->H:Landroid/support/v7/view/l;

    invoke-virtual {v0}, Landroid/support/v7/view/l;->b()V

    .line 332
    :cond_0
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Landroid/support/v7/a/bi;->r:Landroid/support/v7/widget/bv;

    invoke-interface {v0}, Landroid/support/v7/widget/bv;->o()I

    move-result v0

    return v0
.end method

.method public final c(Z)V
    .locals 3

    .prologue
    .line 343
    iget-boolean v0, p0, Landroid/support/v7/a/bi;->y:Z

    if-ne p1, v0, :cond_1

    .line 352
    :cond_0
    return-void

    .line 346
    :cond_1
    iput-boolean p1, p0, Landroid/support/v7/a/bi;->y:Z

    .line 348
    iget-object v0, p0, Landroid/support/v7/a/bi;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 349
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 350
    iget-object v2, p0, Landroid/support/v7/a/bi;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final d(Z)V
    .locals 0

    .prologue
    .line 650
    iput-boolean p1, p0, Landroid/support/v7/a/bi;->C:Z

    .line 651
    return-void
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 844
    .line 5646
    iget-object v0, p0, Landroid/support/v7/a/bi;->q:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->getHeight()I

    move-result v0

    .line 846
    iget-boolean v1, p0, Landroid/support/v7/a/bi;->G:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 5720
    iget-object v1, p0, Landroid/support/v7/a/bi;->p:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v1

    .line 846
    if-ge v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Landroid/content/Context;
    .locals 4

    .prologue
    .line 895
    iget-object v0, p0, Landroid/support/v7/a/bi;->m:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 896
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 897
    iget-object v1, p0, Landroid/support/v7/a/bi;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 898
    sget v2, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 899
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 901
    if-eqz v0, :cond_1

    .line 902
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Landroid/support/v7/a/bi;->l:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/support/v7/a/bi;->m:Landroid/content/Context;

    .line 907
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/a/bi;->m:Landroid/content/Context;

    return-object v0

    .line 904
    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/bi;->l:Landroid/content/Context;

    iput-object v0, p0, Landroid/support/v7/a/bi;->m:Landroid/content/Context;

    goto :goto_0
.end method

.method public final e(Z)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x64

    const/16 v5, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 850
    if-eqz p1, :cond_2

    .line 6662
    iget-boolean v0, p0, Landroid/support/v7/a/bi;->F:Z

    if-nez v0, :cond_1

    .line 6663
    iput-boolean v1, p0, Landroid/support/v7/a/bi;->F:Z

    .line 6664
    iget-object v0, p0, Landroid/support/v7/a/bi;->p:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 6665
    iget-object v0, p0, Landroid/support/v7/a/bi;->p:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 6667
    :cond_0
    invoke-direct {p0, v4}, Landroid/support/v7/a/bi;->g(Z)V

    .line 6891
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v7/a/bi;->q:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    .line 856
    if-eqz v0, :cond_5

    .line 858
    if-eqz p1, :cond_4

    .line 863
    iget-object v0, p0, Landroid/support/v7/a/bi;->r:Landroid/support/v7/widget/bv;

    invoke-interface {v0, v2, v6, v7}, Landroid/support/v7/widget/bv;->a(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 865
    iget-object v1, p0, Landroid/support/v7/a/bi;->s:Landroid/support/v7/widget/ActionBarContextView;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v4, v2, v3}, Landroid/support/v7/widget/ActionBarContextView;->a(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 873
    :goto_1
    new-instance v2, Landroid/support/v7/view/l;

    invoke-direct {v2}, Landroid/support/v7/view/l;-><init>()V

    .line 7056
    iget-object v3, v2, Landroid/support/v7/view/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7057
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->getDuration()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 7058
    iget-object v0, v2, Landroid/support/v7/view/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    invoke-virtual {v2}, Landroid/support/v7/view/l;->a()V

    .line 886
    :goto_2
    return-void

    .line 6687
    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/a/bi;->F:Z

    if-eqz v0, :cond_1

    .line 6688
    iput-boolean v4, p0, Landroid/support/v7/a/bi;->F:Z

    .line 6689
    iget-object v0, p0, Landroid/support/v7/a/bi;->p:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_3

    .line 6690
    iget-object v0, p0, Landroid/support/v7/a/bi;->p:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 6692
    :cond_3
    invoke-direct {p0, v4}, Landroid/support/v7/a/bi;->g(Z)V

    goto :goto_0

    .line 868
    :cond_4
    iget-object v0, p0, Landroid/support/v7/a/bi;->r:Landroid/support/v7/widget/bv;

    const-wide/16 v2, 0xc8

    invoke-interface {v0, v4, v2, v3}, Landroid/support/v7/widget/bv;->a(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 870
    iget-object v0, p0, Landroid/support/v7/a/bi;->s:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v5, v6, v7}, Landroid/support/v7/widget/ActionBarContextView;->a(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    goto :goto_1

    .line 877
    :cond_5
    if-eqz p1, :cond_6

    .line 878
    iget-object v0, p0, Landroid/support/v7/a/bi;->r:Landroid/support/v7/widget/bv;

    invoke-interface {v0, v2}, Landroid/support/v7/widget/bv;->d(I)V

    .line 879
    iget-object v0, p0, Landroid/support/v7/a/bi;->s:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_2

    .line 881
    :cond_6
    iget-object v0, p0, Landroid/support/v7/a/bi;->r:Landroid/support/v7/widget/bv;

    invoke-interface {v0, v4}, Landroid/support/v7/widget/bv;->d(I)V

    .line 882
    iget-object v0, p0, Landroid/support/v7/a/bi;->s:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Landroid/support/v7/a/bi;->r:Landroid/support/v7/widget/bv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/a/bi;->r:Landroid/support/v7/widget/bv;

    invoke-interface {v0}, Landroid/support/v7/widget/bv;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Landroid/support/v7/a/bi;->r:Landroid/support/v7/widget/bv;

    invoke-interface {v0}, Landroid/support/v7/widget/bv;->d()V

    .line 951
    const/4 v0, 0x1

    .line 953
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Landroid/support/v7/a/bi;->r:Landroid/support/v7/widget/bv;

    invoke-interface {v0}, Landroid/support/v7/widget/bv;->a()Landroid/view/ViewGroup;

    move-result-object v0

    .line 441
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 442
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 443
    const/4 v0, 0x1

    .line 445
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 672
    iget-boolean v0, p0, Landroid/support/v7/a/bi;->E:Z

    if-eqz v0, :cond_0

    .line 673
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/a/bi;->E:Z

    .line 674
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/a/bi;->g(Z)V

    .line 676
    :cond_0
    return-void
.end method

.method public final k()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 697
    iget-boolean v0, p0, Landroid/support/v7/a/bi;->E:Z

    if-nez v0, :cond_0

    .line 698
    iput-boolean v1, p0, Landroid/support/v7/a/bi;->E:Z

    .line 699
    invoke-direct {p0, v1}, Landroid/support/v7/a/bi;->g(Z)V

    .line 701
    :cond_0
    return-void
.end method

.method public final l()V
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Landroid/support/v7/a/bi;->H:Landroid/support/v7/view/l;

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Landroid/support/v7/a/bi;->H:Landroid/support/v7/view/l;

    invoke-virtual {v0}, Landroid/support/v7/view/l;->b()V

    .line 939
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/a/bi;->H:Landroid/support/v7/view/l;

    .line 941
    :cond_0
    return-void
.end method
