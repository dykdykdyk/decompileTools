.class Landroid/support/v7/a/ah;
.super Landroid/support/v7/a/v;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Landroid/support/v4/view/LayoutInflaterFactory;
.implements Landroid/support/v7/view/menu/p;


# instance fields
.field private A:Landroid/view/View;

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:[Landroid/support/v7/a/at;

.field private F:Landroid/support/v7/a/at;

.field private G:Z

.field private H:Z

.field private I:I

.field private final J:Ljava/lang/Runnable;

.field private K:Z

.field private L:Landroid/graphics/Rect;

.field private M:Landroid/graphics/Rect;

.field private N:Landroid/support/v7/a/aw;

.field private p:Landroid/support/v7/widget/bu;

.field q:Landroid/support/v7/view/b;

.field r:Landroid/support/v7/widget/ActionBarContextView;

.field s:Landroid/widget/PopupWindow;

.field t:Ljava/lang/Runnable;

.field u:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field v:Landroid/view/ViewGroup;

.field private w:Landroid/support/v7/a/ap;

.field private x:Landroid/support/v7/a/au;

.field private y:Z

.field private z:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/a/t;)V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/a/v;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/a/t;)V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/a/ah;->u:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 125
    new-instance v0, Landroid/support/v7/a/ai;

    invoke-direct {v0, p0}, Landroid/support/v7/a/ai;-><init>(Landroid/support/v7/a/ah;)V

    iput-object v0, p0, Landroid/support/v7/a/ah;->J:Ljava/lang/Runnable;

    .line 148
    return-void
.end method

.method static synthetic a(Landroid/support/v7/a/ah;)I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Landroid/support/v7/a/ah;->I:I

    return v0
.end method

.method static synthetic a(Landroid/support/v7/a/ah;Landroid/view/Menu;)Landroid/support/v7/a/at;
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/support/v7/a/ah;->a(Landroid/view/Menu;)Landroid/support/v7/a/at;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/Menu;)Landroid/support/v7/a/at;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1549
    iget-object v3, p0, Landroid/support/v7/a/ah;->E:[Landroid/support/v7/a/at;

    .line 1550
    if-eqz v3, :cond_0

    array-length v0, v3

    :goto_0
    move v2, v1

    .line 1551
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1552
    aget-object v1, v3, v2

    .line 1553
    if-eqz v1, :cond_1

    iget-object v4, v1, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    if-ne v4, p1, :cond_1

    move-object v0, v1

    .line 1557
    :goto_2
    return-object v0

    :cond_0
    move v0, v1

    .line 1550
    goto :goto_0

    .line 1551
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1557
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private a(ILandroid/support/v7/a/at;Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 1522
    if-nez p3, :cond_1

    .line 1524
    if-nez p2, :cond_0

    .line 1525
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/a/ah;->E:[Landroid/support/v7/a/at;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1526
    iget-object v0, p0, Landroid/support/v7/a/ah;->E:[Landroid/support/v7/a/at;

    aget-object p2, v0, p1

    .line 1530
    :cond_0
    if-eqz p2, :cond_1

    .line 1532
    iget-object p3, p2, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    .line 1537
    :cond_1
    if-eqz p2, :cond_3

    iget-boolean v0, p2, Landroid/support/v7/a/at;->o:Z

    if-nez v0, :cond_3

    .line 1546
    :cond_2
    :goto_0
    return-void

    .line 22271
    :cond_3
    iget-boolean v0, p0, Landroid/support/v7/a/v;->o:Z

    .line 1540
    if-nez v0, :cond_2

    .line 1544
    iget-object v0, p0, Landroid/support/v7/a/ah;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/a/ah;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    .line 22612
    invoke-direct {p0, p1}, Landroid/support/v7/a/ah;->f(I)Landroid/support/v7/a/at;

    move-result-object v0

    .line 22614
    iget-object v1, v0, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    if-eqz v1, :cond_1

    .line 22615
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 22616
    iget-object v2, v0, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    invoke-virtual {v2, v1}, Landroid/support/v7/view/menu/o;->a(Landroid/os/Bundle;)V

    .line 22617
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 22618
    iput-object v1, v0, Landroid/support/v7/a/at;->s:Landroid/os/Bundle;

    .line 22621
    :cond_0
    iget-object v1, v0, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/o;->d()V

    .line 22622
    iget-object v1, v0, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/o;->clear()V

    .line 22624
    :cond_1
    iput-boolean v4, v0, Landroid/support/v7/a/at;->r:Z

    .line 22625
    iput-boolean v4, v0, Landroid/support/v7/a/at;->q:Z

    .line 22628
    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/support/v7/a/ah;->p:Landroid/support/v7/widget/bu;

    if-eqz v0, :cond_3

    .line 22630
    invoke-direct {p0, v3}, Landroid/support/v7/a/ah;->f(I)Landroid/support/v7/a/at;

    move-result-object v0

    .line 22631
    if-eqz v0, :cond_3

    .line 22632
    iput-boolean v3, v0, Landroid/support/v7/a/at;->m:Z

    .line 22633
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/a/ah;->b(Landroid/support/v7/a/at;Landroid/view/KeyEvent;)Z

    .line 93
    :cond_3
    return-void
.end method

.method static synthetic a(Landroid/support/v7/a/ah;ILandroid/support/v7/a/at;Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/a/ah;->a(ILandroid/support/v7/a/at;Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/a/ah;Landroid/support/v7/a/at;Z)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Landroid/support/v7/a/ah;->a(Landroid/support/v7/a/at;Z)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/a/ah;Landroid/support/v7/view/menu/o;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/support/v7/a/ah;->b(Landroid/support/v7/view/menu/o;)V

    return-void
.end method

.method private a(Landroid/support/v7/a/at;Landroid/view/KeyEvent;)V
    .locals 10

    .prologue
    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 1089
    iget-boolean v0, p1, Landroid/support/v7/a/at;->o:Z

    if-nez v0, :cond_0

    .line 15271
    iget-boolean v0, p0, Landroid/support/v7/a/v;->o:Z

    .line 1089
    if-eqz v0, :cond_1

    .line 1185
    :cond_0
    :goto_0
    return-void

    .line 1095
    :cond_1
    iget v0, p1, Landroid/support/v7/a/at;->a:I

    if-nez v0, :cond_2

    .line 1096
    iget-object v4, p0, Landroid/support/v7/a/ah;->b:Landroid/content/Context;

    .line 1097
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1098
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v5, 0x4

    if-ne v0, v5, :cond_3

    move v0, v9

    .line 1100
    :goto_1
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_4

    move v4, v9

    .line 1103
    :goto_2
    if-eqz v0, :cond_2

    if-nez v4, :cond_0

    .line 15279
    :cond_2
    iget-object v0, p0, Landroid/support/v7/a/v;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1109
    if-eqz v0, :cond_5

    iget v4, p1, Landroid/support/v7/a/at;->a:I

    iget-object v5, p1, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1111
    invoke-direct {p0, p1, v9}, Landroid/support/v7/a/ah;->a(Landroid/support/v7/a/at;Z)V

    goto :goto_0

    :cond_3
    move v0, v3

    .line 1098
    goto :goto_1

    :cond_4
    move v4, v3

    .line 1100
    goto :goto_2

    .line 1115
    :cond_5
    iget-object v0, p0, Landroid/support/v7/a/ah;->b:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/WindowManager;

    .line 1116
    if-eqz v8, :cond_0

    .line 1121
    invoke-direct {p0, p1, p2}, Landroid/support/v7/a/ah;->b(Landroid/support/v7/a/at;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, p1, Landroid/support/v7/a/at;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Landroid/support/v7/a/at;->q:Z

    if-eqz v0, :cond_15

    .line 1127
    :cond_6
    iget-object v0, p1, Landroid/support/v7/a/at;->g:Landroid/view/ViewGroup;

    if-nez v0, :cond_d

    .line 16188
    invoke-virtual {p0}, Landroid/support/v7/a/ah;->m()Landroid/content/Context;

    move-result-object v0

    .line 16956
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 16957
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 16958
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 16961
    sget v5, Landroid/support/v7/appcompat/R$attr;->actionBarPopupTheme:I

    invoke-virtual {v4, v5, v1, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 16962
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_7

    .line 16963
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 16967
    :cond_7
    sget v5, Landroid/support/v7/appcompat/R$attr;->panelMenuListTheme:I

    invoke-virtual {v4, v5, v1, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 16968
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_c

    .line 16969
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v1, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 16974
    :goto_3
    new-instance v1, Landroid/support/v7/view/e;

    invoke-direct {v1, v0, v3}, Landroid/support/v7/view/e;-><init>(Landroid/content/Context;I)V

    .line 16975
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 16977
    iput-object v1, p1, Landroid/support/v7/a/at;->l:Landroid/content/Context;

    .line 16979
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 16980
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_panelBackground:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p1, Landroid/support/v7/a/at;->b:I

    .line 16982
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_android_windowAnimationStyle:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p1, Landroid/support/v7/a/at;->f:I

    .line 16984
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 16189
    new-instance v0, Landroid/support/v7/a/as;

    iget-object v1, p1, Landroid/support/v7/a/at;->l:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/a/as;-><init>(Landroid/support/v7/a/ah;Landroid/content/Context;)V

    iput-object v0, p1, Landroid/support/v7/a/at;->g:Landroid/view/ViewGroup;

    .line 16190
    const/16 v0, 0x51

    iput v0, p1, Landroid/support/v7/a/at;->c:I

    .line 1129
    iget-object v0, p1, Landroid/support/v7/a/at;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 17282
    :cond_8
    :goto_4
    iget-object v0, p1, Landroid/support/v7/a/at;->i:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 17283
    iget-object v0, p1, Landroid/support/v7/a/at;->i:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v7/a/at;->h:Landroid/view/View;

    move v0, v9

    .line 1137
    :goto_5
    if-eqz v0, :cond_0

    .line 18939
    iget-object v0, p1, Landroid/support/v7/a/at;->h:Landroid/view/View;

    if-eqz v0, :cond_14

    .line 18940
    iget-object v0, p1, Landroid/support/v7/a/at;->i:Landroid/view/View;

    if-eqz v0, :cond_13

    move v0, v9

    .line 1137
    :goto_6
    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p1, Landroid/support/v7/a/at;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1142
    if-nez v0, :cond_17

    .line 1143
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v1, v0

    .line 1146
    :goto_7
    iget v0, p1, Landroid/support/v7/a/at;->b:I

    .line 1147
    iget-object v4, p1, Landroid/support/v7/a/at;->g:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1149
    iget-object v0, p1, Landroid/support/v7/a/at;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1150
    if-eqz v0, :cond_9

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_9

    .line 1151
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v4, p1, Landroid/support/v7/a/at;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1153
    :cond_9
    iget-object v0, p1, Landroid/support/v7/a/at;->g:Landroid/view/ViewGroup;

    iget-object v4, p1, Landroid/support/v7/a/at;->h:Landroid/view/View;

    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1159
    iget-object v0, p1, Landroid/support/v7/a/at;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1160
    iget-object v0, p1, Landroid/support/v7/a/at;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_a
    move v1, v2

    .line 1171
    :cond_b
    :goto_8
    iput-boolean v3, p1, Landroid/support/v7/a/at;->n:Z

    .line 1173
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v3, p1, Landroid/support/v7/a/at;->d:I

    iget v4, p1, Landroid/support/v7/a/at;->e:I

    const/16 v5, 0x3ea

    const/high16 v6, 0x820000

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 1180
    iget v1, p1, Landroid/support/v7/a/at;->c:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1181
    iget v1, p1, Landroid/support/v7/a/at;->f:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1183
    iget-object v1, p1, Landroid/support/v7/a/at;->g:Landroid/view/ViewGroup;

    invoke-interface {v8, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1184
    iput-boolean v9, p1, Landroid/support/v7/a/at;->o:Z

    goto/16 :goto_0

    .line 16971
    :cond_c
    sget v1, Landroid/support/v7/appcompat/R$style;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v4, v1, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto/16 :goto_3

    .line 1131
    :cond_d
    iget-boolean v0, p1, Landroid/support/v7/a/at;->q:Z

    if-eqz v0, :cond_8

    iget-object v0, p1, Landroid/support/v7/a/at;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_8

    .line 1133
    iget-object v0, p1, Landroid/support/v7/a/at;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto/16 :goto_4

    .line 17287
    :cond_e
    iget-object v0, p1, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    if-eqz v0, :cond_12

    .line 17291
    iget-object v0, p0, Landroid/support/v7/a/ah;->x:Landroid/support/v7/a/au;

    if-nez v0, :cond_f

    .line 17292
    new-instance v0, Landroid/support/v7/a/au;

    invoke-direct {v0, p0, v3}, Landroid/support/v7/a/au;-><init>(Landroid/support/v7/a/ah;B)V

    iput-object v0, p0, Landroid/support/v7/a/ah;->x:Landroid/support/v7/a/au;

    .line 17295
    :cond_f
    iget-object v0, p0, Landroid/support/v7/a/ah;->x:Landroid/support/v7/a/au;

    .line 18000
    iget-object v1, p1, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    if-nez v1, :cond_10

    const/4 v0, 0x0

    .line 17297
    :goto_9
    check-cast v0, Landroid/view/View;

    iput-object v0, p1, Landroid/support/v7/a/at;->h:Landroid/view/View;

    .line 17299
    iget-object v0, p1, Landroid/support/v7/a/at;->h:Landroid/view/View;

    if-eqz v0, :cond_12

    move v0, v9

    goto/16 :goto_5

    .line 18002
    :cond_10
    iget-object v1, p1, Landroid/support/v7/a/at;->k:Landroid/support/v7/view/menu/l;

    if-nez v1, :cond_11

    .line 18003
    new-instance v1, Landroid/support/v7/view/menu/l;

    iget-object v4, p1, Landroid/support/v7/a/at;->l:Landroid/content/Context;

    sget v5, Landroid/support/v7/appcompat/R$layout;->abc_list_menu_item_layout:I

    invoke-direct {v1, v4, v5}, Landroid/support/v7/view/menu/l;-><init>(Landroid/content/Context;I)V

    iput-object v1, p1, Landroid/support/v7/a/at;->k:Landroid/support/v7/view/menu/l;

    .line 18005
    iget-object v1, p1, Landroid/support/v7/a/at;->k:Landroid/support/v7/view/menu/l;

    .line 18133
    iput-object v0, v1, Landroid/support/v7/view/menu/l;->g:Landroid/support/v7/view/menu/af;

    .line 18006
    iget-object v0, p1, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    iget-object v1, p1, Landroid/support/v7/a/at;->k:Landroid/support/v7/view/menu/l;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/o;->a(Landroid/support/v7/view/menu/ae;)V

    .line 18009
    :cond_11
    iget-object v0, p1, Landroid/support/v7/a/at;->k:Landroid/support/v7/view/menu/l;

    iget-object v1, p1, Landroid/support/v7/a/at;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/l;->a(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/ag;

    move-result-object v0

    goto :goto_9

    :cond_12
    move v0, v3

    .line 17299
    goto/16 :goto_5

    .line 18942
    :cond_13
    iget-object v0, p1, Landroid/support/v7/a/at;->k:Landroid/support/v7/view/menu/l;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/l;->b()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_14

    move v0, v9

    goto/16 :goto_6

    :cond_14
    move v0, v3

    goto/16 :goto_6

    .line 1162
    :cond_15
    iget-object v0, p1, Landroid/support/v7/a/at;->i:Landroid/view/View;

    if-eqz v0, :cond_16

    .line 1165
    iget-object v0, p1, Landroid/support/v7/a/at;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1166
    if-eqz v0, :cond_16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v0, v1, :cond_b

    :cond_16
    move v1, v2

    goto/16 :goto_8

    :cond_17
    move-object v1, v0

    goto/16 :goto_7
.end method

.method private a(Landroid/support/v7/a/at;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1425
    if-eqz p2, :cond_1

    iget v0, p1, Landroid/support/v7/a/at;->a:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/a/ah;->p:Landroid/support/v7/widget/bu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/a/ah;->p:Landroid/support/v7/widget/bu;

    .line 1426
    invoke-interface {v0}, Landroid/support/v7/widget/bu;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1427
    iget-object v0, p1, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    invoke-direct {p0, v0}, Landroid/support/v7/a/ah;->b(Landroid/support/v7/view/menu/o;)V

    .line 1454
    :cond_0
    :goto_0
    return-void

    .line 1431
    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/ah;->b:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1432
    if-eqz v0, :cond_2

    iget-boolean v1, p1, Landroid/support/v7/a/at;->o:Z

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/support/v7/a/at;->g:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 1433
    iget-object v1, p1, Landroid/support/v7/a/at;->g:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1435
    if-eqz p2, :cond_2

    .line 1436
    iget v0, p1, Landroid/support/v7/a/at;->a:I

    invoke-direct {p0, v0, p1, v3}, Landroid/support/v7/a/ah;->a(ILandroid/support/v7/a/at;Landroid/view/Menu;)V

    .line 1440
    :cond_2
    iput-boolean v2, p1, Landroid/support/v7/a/at;->m:Z

    .line 1441
    iput-boolean v2, p1, Landroid/support/v7/a/at;->n:Z

    .line 1442
    iput-boolean v2, p1, Landroid/support/v7/a/at;->o:Z

    .line 1445
    iput-object v3, p1, Landroid/support/v7/a/at;->h:Landroid/view/View;

    .line 1449
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v7/a/at;->q:Z

    .line 1451
    iget-object v0, p0, Landroid/support/v7/a/ah;->F:Landroid/support/v7/a/at;

    if-ne v0, p1, :cond_0

    .line 1452
    iput-object v3, p0, Landroid/support/v7/a/ah;->F:Landroid/support/v7/a/at;

    goto :goto_0
.end method

.method private a(Landroid/support/v7/a/at;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1579
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1599
    :cond_0
    :goto_0
    return v0

    .line 1587
    :cond_1
    iget-boolean v1, p1, Landroid/support/v7/a/at;->m:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1, p3}, Landroid/support/v7/a/ah;->b(Landroid/support/v7/a/at;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p1, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    if-eqz v1, :cond_0

    .line 1589
    iget-object v0, p1, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p3, v1}, Landroid/support/v7/view/menu/o;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Landroid/support/v7/a/ah;I)I
    .locals 8

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22645
    .line 22647
    iget-object v0, p0, Landroid/support/v7/a/ah;->r:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_c

    .line 22648
    iget-object v0, p0, Landroid/support/v7/a/ah;->r:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_c

    .line 22649
    iget-object v0, p0, Landroid/support/v7/a/ah;->r:Landroid/support/v7/widget/ActionBarContextView;

    .line 22650
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 22653
    iget-object v1, p0, Landroid/support/v7/a/ah;->r:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 22654
    iget-object v1, p0, Landroid/support/v7/a/ah;->L:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 22655
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/a/ah;->L:Landroid/graphics/Rect;

    .line 22656
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/a/ah;->M:Landroid/graphics/Rect;

    .line 22658
    :cond_0
    iget-object v1, p0, Landroid/support/v7/a/ah;->L:Landroid/graphics/Rect;

    .line 22659
    iget-object v4, p0, Landroid/support/v7/a/ah;->M:Landroid/graphics/Rect;

    .line 22660
    invoke-virtual {v1, v2, p1, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 22662
    iget-object v5, p0, Landroid/support/v7/a/ah;->v:Landroid/view/ViewGroup;

    invoke-static {v5, v1, v4}, Landroid/support/v7/widget/gq;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 22663
    iget v1, v4, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_4

    move v1, p1

    .line 22664
    :goto_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v1, :cond_b

    .line 22666
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 22668
    iget-object v1, p0, Landroid/support/v7/a/ah;->A:Landroid/view/View;

    if-nez v1, :cond_5

    .line 22669
    new-instance v1, Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/a/ah;->b:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/a/ah;->A:Landroid/view/View;

    .line 22670
    iget-object v1, p0, Landroid/support/v7/a/ah;->A:Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/a/ah;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$color;->abc_input_method_navigation_guard:I

    .line 22671
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 22670
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 22672
    iget-object v1, p0, Landroid/support/v7/a/ah;->v:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/support/v7/a/ah;->A:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move v1, v3

    .line 22686
    :goto_1
    iget-object v4, p0, Landroid/support/v7/a/ah;->A:Landroid/view/View;

    if-eqz v4, :cond_7

    .line 22692
    :goto_2
    iget-boolean v4, p0, Landroid/support/v7/a/ah;->k:Z

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    move p1, v2

    :cond_1
    move v7, v1

    move v1, v3

    move v3, v7

    .line 22702
    :goto_3
    if-eqz v3, :cond_2

    .line 22703
    iget-object v3, p0, Landroid/support/v7/a/ah;->r:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    move v0, v1

    .line 22707
    :goto_4
    iget-object v1, p0, Landroid/support/v7/a/ah;->A:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 22708
    iget-object v1, p0, Landroid/support/v7/a/ah;->A:Landroid/view/View;

    if-eqz v0, :cond_9

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 93
    :cond_3
    return p1

    :cond_4
    move v1, v2

    .line 22663
    goto :goto_0

    .line 22676
    :cond_5
    iget-object v1, p0, Landroid/support/v7/a/ah;->A:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 22677
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, p1, :cond_6

    .line 22678
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 22679
    iget-object v4, p0, Landroid/support/v7/a/ah;->A:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    move v3, v2

    .line 22686
    goto :goto_2

    .line 22697
    :cond_8
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v1, :cond_a

    .line 22699
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v1, v2

    goto :goto_3

    .line 22708
    :cond_9
    const/16 v2, 0x8

    goto :goto_5

    :cond_a
    move v3, v2

    move v1, v2

    goto :goto_3

    :cond_b
    move v1, v2

    goto :goto_1

    :cond_c
    move v0, v2

    goto :goto_4
.end method

.method private b(Landroid/support/v7/view/menu/o;)V
    .locals 2

    .prologue
    .line 1407
    iget-boolean v0, p0, Landroid/support/v7/a/ah;->D:Z

    if-eqz v0, :cond_0

    .line 1418
    :goto_0
    return-void

    .line 1411
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/a/ah;->D:Z

    .line 1412
    iget-object v0, p0, Landroid/support/v7/a/ah;->p:Landroid/support/v7/widget/bu;

    invoke-interface {v0}, Landroid/support/v7/widget/bu;->g()V

    .line 20279
    iget-object v0, p0, Landroid/support/v7/a/v;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1414
    if-eqz v0, :cond_1

    .line 21271
    iget-boolean v1, p0, Landroid/support/v7/a/v;->o:Z

    .line 1414
    if-nez v1, :cond_1

    .line 1415
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1417
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/a/ah;->D:Z

    goto :goto_0
.end method

.method static synthetic b(Landroid/support/v7/a/ah;)Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/a/ah;->H:Z

    return v0
.end method

.method private b(Landroid/support/v7/a/at;Landroid/view/KeyEvent;)Z
    .locals 10

    .prologue
    const/16 v5, 0x6c

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1303
    .line 19271
    iget-boolean v0, p0, Landroid/support/v7/a/v;->o:Z

    .line 1303
    if-eqz v0, :cond_1

    .line 1403
    :cond_0
    :goto_0
    return v4

    .line 1308
    :cond_1
    iget-boolean v0, p1, Landroid/support/v7/a/at;->m:Z

    if-eqz v0, :cond_2

    move v4, v3

    .line 1309
    goto :goto_0

    .line 1312
    :cond_2
    iget-object v0, p0, Landroid/support/v7/a/ah;->F:Landroid/support/v7/a/at;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/a/ah;->F:Landroid/support/v7/a/at;

    if-eq v0, p1, :cond_3

    .line 1314
    iget-object v0, p0, Landroid/support/v7/a/ah;->F:Landroid/support/v7/a/at;

    invoke-direct {p0, v0, v4}, Landroid/support/v7/a/ah;->a(Landroid/support/v7/a/at;Z)V

    .line 19279
    :cond_3
    iget-object v0, p0, Landroid/support/v7/a/v;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v7

    .line 1319
    if-eqz v7, :cond_4

    .line 1320
    iget v0, p1, Landroid/support/v7/a/at;->a:I

    invoke-interface {v7, v0}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v7/a/at;->i:Landroid/view/View;

    .line 1323
    :cond_4
    iget v0, p1, Landroid/support/v7/a/at;->a:I

    if-eqz v0, :cond_5

    iget v0, p1, Landroid/support/v7/a/at;->a:I

    if-ne v0, v5, :cond_f

    :cond_5
    move v6, v3

    .line 1326
    :goto_1
    if-eqz v6, :cond_6

    iget-object v0, p0, Landroid/support/v7/a/ah;->p:Landroid/support/v7/widget/bu;

    if-eqz v0, :cond_6

    .line 1329
    iget-object v0, p0, Landroid/support/v7/a/ah;->p:Landroid/support/v7/widget/bu;

    invoke-interface {v0}, Landroid/support/v7/widget/bu;->f()V

    .line 1332
    :cond_6
    iget-object v0, p1, Landroid/support/v7/a/at;->i:Landroid/view/View;

    if-nez v0, :cond_16

    if-eqz v6, :cond_7

    .line 20149
    iget-object v0, p0, Landroid/support/v7/a/v;->g:Landroid/support/v7/a/a;

    .line 1333
    instance-of v0, v0, Landroid/support/v7/a/ay;

    if-nez v0, :cond_16

    .line 1336
    :cond_7
    iget-object v0, p1, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    if-eqz v0, :cond_8

    iget-boolean v0, p1, Landroid/support/v7/a/at;->r:Z

    if-eqz v0, :cond_12

    .line 1337
    :cond_8
    iget-object v0, p1, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    if-nez v0, :cond_c

    .line 20239
    iget-object v2, p0, Landroid/support/v7/a/ah;->b:Landroid/content/Context;

    .line 20242
    iget v0, p1, Landroid/support/v7/a/at;->a:I

    if-eqz v0, :cond_9

    iget v0, p1, Landroid/support/v7/a/at;->a:I

    if-ne v0, v5, :cond_19

    :cond_9
    iget-object v0, p0, Landroid/support/v7/a/ah;->p:Landroid/support/v7/widget/bu;

    if-eqz v0, :cond_19

    .line 20244
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 20245
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 20246
    sget v0, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v8, v0, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 20249
    iget v0, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_10

    .line 20250
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 20251
    invoke-virtual {v0, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 20252
    iget v9, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v9, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 20253
    sget v9, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v0, v9, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 20260
    :goto_2
    iget v9, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_b

    .line 20261
    if-nez v0, :cond_a

    .line 20262
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 20263
    invoke-virtual {v0, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 20265
    :cond_a
    iget v5, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v5, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_b
    move-object v5, v0

    .line 20268
    if-eqz v5, :cond_19

    .line 20269
    new-instance v0, Landroid/support/v7/view/e;

    invoke-direct {v0, v2, v4}, Landroid/support/v7/view/e;-><init>(Landroid/content/Context;I)V

    .line 20270
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 20274
    :goto_3
    new-instance v2, Landroid/support/v7/view/menu/o;

    invoke-direct {v2, v0}, Landroid/support/v7/view/menu/o;-><init>(Landroid/content/Context;)V

    .line 20275
    invoke-virtual {v2, p0}, Landroid/support/v7/view/menu/o;->a(Landroid/support/v7/view/menu/p;)V

    .line 20276
    invoke-virtual {p1, v2}, Landroid/support/v7/a/at;->a(Landroid/support/v7/view/menu/o;)V

    .line 1338
    iget-object v0, p1, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    if-eqz v0, :cond_0

    .line 1343
    :cond_c
    if-eqz v6, :cond_e

    iget-object v0, p0, Landroid/support/v7/a/ah;->p:Landroid/support/v7/widget/bu;

    if-eqz v0, :cond_e

    .line 1344
    iget-object v0, p0, Landroid/support/v7/a/ah;->w:Landroid/support/v7/a/ap;

    if-nez v0, :cond_d

    .line 1345
    new-instance v0, Landroid/support/v7/a/ap;

    invoke-direct {v0, p0, v4}, Landroid/support/v7/a/ap;-><init>(Landroid/support/v7/a/ah;B)V

    iput-object v0, p0, Landroid/support/v7/a/ah;->w:Landroid/support/v7/a/ap;

    .line 1347
    :cond_d
    iget-object v0, p0, Landroid/support/v7/a/ah;->p:Landroid/support/v7/widget/bu;

    iget-object v2, p1, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    iget-object v5, p0, Landroid/support/v7/a/ah;->w:Landroid/support/v7/a/ap;

    invoke-interface {v0, v2, v5}, Landroid/support/v7/widget/bu;->a(Landroid/view/Menu;Landroid/support/v7/view/menu/af;)V

    .line 1352
    :cond_e
    iget-object v0, p1, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->d()V

    .line 1353
    iget v0, p1, Landroid/support/v7/a/at;->a:I

    iget-object v2, p1, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    invoke-interface {v7, v0, v2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1355
    invoke-virtual {p1, v1}, Landroid/support/v7/a/at;->a(Landroid/support/v7/view/menu/o;)V

    .line 1357
    if-eqz v6, :cond_0

    iget-object v0, p0, Landroid/support/v7/a/ah;->p:Landroid/support/v7/widget/bu;

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Landroid/support/v7/a/ah;->p:Landroid/support/v7/widget/bu;

    iget-object v2, p0, Landroid/support/v7/a/ah;->w:Landroid/support/v7/a/ap;

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/bu;->a(Landroid/view/Menu;Landroid/support/v7/view/menu/af;)V

    goto/16 :goto_0

    :cond_f
    move v6, v4

    .line 1323
    goto/16 :goto_1

    .line 20256
    :cond_10
    sget v0, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v8, v0, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v0, v1

    goto :goto_2

    .line 1365
    :cond_11
    iput-boolean v4, p1, Landroid/support/v7/a/at;->r:Z

    .line 1370
    :cond_12
    iget-object v0, p1, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->d()V

    .line 1374
    iget-object v0, p1, Landroid/support/v7/a/at;->s:Landroid/os/Bundle;

    if-eqz v0, :cond_13

    .line 1375
    iget-object v0, p1, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    iget-object v2, p1, Landroid/support/v7/a/at;->s:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/o;->b(Landroid/os/Bundle;)V

    .line 1376
    iput-object v1, p1, Landroid/support/v7/a/at;->s:Landroid/os/Bundle;

    .line 1380
    :cond_13
    iget-object v0, p1, Landroid/support/v7/a/at;->i:Landroid/view/View;

    iget-object v2, p1, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    invoke-interface {v7, v4, v0, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1381
    if-eqz v6, :cond_14

    iget-object v0, p0, Landroid/support/v7/a/ah;->p:Landroid/support/v7/widget/bu;

    if-eqz v0, :cond_14

    .line 1384
    iget-object v0, p0, Landroid/support/v7/a/ah;->p:Landroid/support/v7/widget/bu;

    iget-object v2, p0, Landroid/support/v7/a/ah;->w:Landroid/support/v7/a/ap;

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/bu;->a(Landroid/view/Menu;Landroid/support/v7/view/menu/af;)V

    .line 1386
    :cond_14
    iget-object v0, p1, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->e()V

    goto/16 :goto_0

    .line 1391
    :cond_15
    if-eqz p2, :cond_17

    .line 1392
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    .line 1391
    :goto_4
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 1393
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    if-eq v0, v3, :cond_18

    move v0, v3

    :goto_5
    iput-boolean v0, p1, Landroid/support/v7/a/at;->p:Z

    .line 1394
    iget-object v0, p1, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    iget-boolean v1, p1, Landroid/support/v7/a/at;->p:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/o;->setQwertyMode(Z)V

    .line 1395
    iget-object v0, p1, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->e()V

    .line 1399
    :cond_16
    iput-boolean v3, p1, Landroid/support/v7/a/at;->m:Z

    .line 1400
    iput-boolean v4, p1, Landroid/support/v7/a/at;->n:Z

    .line 1401
    iput-object p1, p0, Landroid/support/v7/a/ah;->F:Landroid/support/v7/a/at;

    move v4, v3

    .line 1403
    goto/16 :goto_0

    .line 1392
    :cond_17
    const/4 v0, -0x1

    goto :goto_4

    :cond_18
    move v0, v4

    .line 1393
    goto :goto_5

    :cond_19
    move-object v0, v2

    goto/16 :goto_3
.end method

.method static synthetic c(Landroid/support/v7/a/ah;)I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/a/ah;->I:I

    return v0
.end method

.method static synthetic d(Landroid/support/v7/a/ah;)V
    .locals 2

    .prologue
    .line 93
    .line 22740
    iget-object v0, p0, Landroid/support/v7/a/ah;->p:Landroid/support/v7/widget/bu;

    if-eqz v0, :cond_0

    .line 22741
    iget-object v0, p0, Landroid/support/v7/a/ah;->p:Landroid/support/v7/widget/bu;

    invoke-interface {v0}, Landroid/support/v7/widget/bu;->g()V

    .line 22744
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/ah;->s:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 22745
    iget-object v0, p0, Landroid/support/v7/a/ah;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/a/ah;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 22746
    iget-object v0, p0, Landroid/support/v7/a/ah;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22748
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/a/ah;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22754
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/a/ah;->s:Landroid/widget/PopupWindow;

    .line 22756
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/a/ah;->o()V

    .line 22758
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/a/ah;->f(I)Landroid/support/v7/a/at;

    move-result-object v0

    .line 22759
    if-eqz v0, :cond_3

    iget-object v1, v0, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    if-eqz v1, :cond_3

    .line 22760
    iget-object v0, v0, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->close()V

    .line 93
    :cond_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic e(Landroid/support/v7/a/ah;)V
    .locals 0

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/support/v7/a/ah;->o()V

    return-void
.end method

.method private f(I)Landroid/support/v7/a/at;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1562
    iget-object v0, p0, Landroid/support/v7/a/ah;->E:[Landroid/support/v7/a/at;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    .line 1563
    :cond_0
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Landroid/support/v7/a/at;

    .line 1564
    if-eqz v0, :cond_1

    .line 1565
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1567
    :cond_1
    iput-object v1, p0, Landroid/support/v7/a/ah;->E:[Landroid/support/v7/a/at;

    move-object v0, v1

    .line 1570
    :cond_2
    aget-object v1, v0, p1

    .line 1571
    if-nez v1, :cond_3

    .line 1572
    new-instance v1, Landroid/support/v7/a/at;

    invoke-direct {v1, p1}, Landroid/support/v7/a/at;-><init>(I)V

    aput-object v1, v0, p1

    move-object v0, v1

    .line 1574
    :goto_0
    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic f(Landroid/support/v7/a/ah;)V
    .locals 2

    .prologue
    .line 93
    .line 23421
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/a/ah;->f(I)Landroid/support/v7/a/at;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/a/ah;->a(Landroid/support/v7/a/at;Z)V

    .line 93
    return-void
.end method

.method private g(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1603
    iget v0, p0, Landroid/support/v7/a/ah;->I:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/a/ah;->I:I

    .line 1605
    iget-boolean v0, p0, Landroid/support/v7/a/ah;->H:Z

    if-nez v0, :cond_0

    .line 1606
    iget-object v0, p0, Landroid/support/v7/a/ah;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/a/ah;->J:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1607
    iput-boolean v2, p0, Landroid/support/v7/a/ah;->H:Z

    .line 1609
    :cond_0
    return-void
.end method

.method private p()V
    .locals 9

    .prologue
    const/16 v8, 0x6c

    const v5, 0x1020002

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 315
    iget-boolean v0, p0, Landroid/support/v7/a/ah;->y:Z

    if-nez v0, :cond_18

    .line 3343
    iget-object v0, p0, Landroid/support/v7/a/ah;->b:Landroid/content/Context;

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3345
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3346
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3347
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3351
    :cond_0
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowNoTitle:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3352
    invoke-virtual {p0, v7}, Landroid/support/v7/a/ah;->c(I)Z

    .line 3357
    :cond_1
    :goto_0
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3358
    const/16 v1, 0x6d

    invoke-virtual {p0, v1}, Landroid/support/v7/a/ah;->c(I)Z

    .line 3360
    :cond_2
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionModeOverlay:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3361
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Landroid/support/v7/a/ah;->c(I)Z

    .line 3363
    :cond_3
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_android_windowIsFloating:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/a/ah;->l:Z

    .line 3364
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3367
    iget-object v0, p0, Landroid/support/v7/a/ah;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 3369
    iget-object v0, p0, Landroid/support/v7/a/ah;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3373
    iget-boolean v1, p0, Landroid/support/v7/a/ah;->m:Z

    if-nez v1, :cond_a

    .line 3374
    iget-boolean v1, p0, Landroid/support/v7/a/ah;->l:Z

    if-eqz v1, :cond_5

    .line 3376
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_dialog_title_material:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3380
    iput-boolean v6, p0, Landroid/support/v7/a/ah;->j:Z

    iput-boolean v6, p0, Landroid/support/v7/a/ah;->i:Z

    move-object v2, v0

    .line 3461
    :goto_1
    if-nez v2, :cond_d

    .line 3462
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/support/v7/a/ah;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/a/ah;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/a/ah;->l:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/a/ah;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/a/ah;->m:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3353
    :cond_4
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3355
    invoke-virtual {p0, v8}, Landroid/support/v7/a/ah;->c(I)Z

    goto/16 :goto_0

    .line 3381
    :cond_5
    iget-boolean v0, p0, Landroid/support/v7/a/ah;->i:Z

    if-eqz v0, :cond_1a

    .line 3387
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 3388
    iget-object v0, p0, Landroid/support/v7/a/ah;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v2, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v0, v2, v1, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3391
    iget v0, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_9

    .line 3392
    new-instance v0, Landroid/support/v7/view/e;

    iget-object v2, p0, Landroid/support/v7/a/ah;->b:Landroid/content/Context;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v0, v2, v1}, Landroid/support/v7/view/e;-><init>(Landroid/content/Context;I)V

    .line 3398
    :goto_2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_screen_toolbar:I

    .line 3399
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3401
    sget v1, Landroid/support/v7/appcompat/R$id;->decor_content_parent:I

    .line 3402
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/bu;

    iput-object v1, p0, Landroid/support/v7/a/ah;->p:Landroid/support/v7/widget/bu;

    .line 3403
    iget-object v1, p0, Landroid/support/v7/a/ah;->p:Landroid/support/v7/widget/bu;

    .line 4279
    iget-object v2, p0, Landroid/support/v7/a/v;->c:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    .line 3403
    invoke-interface {v1, v2}, Landroid/support/v7/widget/bu;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 3408
    iget-boolean v1, p0, Landroid/support/v7/a/ah;->j:Z

    if-eqz v1, :cond_6

    .line 3409
    iget-object v1, p0, Landroid/support/v7/a/ah;->p:Landroid/support/v7/widget/bu;

    const/16 v2, 0x6d

    invoke-interface {v1, v2}, Landroid/support/v7/widget/bu;->a(I)V

    .line 3411
    :cond_6
    iget-boolean v1, p0, Landroid/support/v7/a/ah;->B:Z

    if-eqz v1, :cond_7

    .line 3412
    iget-object v1, p0, Landroid/support/v7/a/ah;->p:Landroid/support/v7/widget/bu;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/support/v7/widget/bu;->a(I)V

    .line 3414
    :cond_7
    iget-boolean v1, p0, Landroid/support/v7/a/ah;->C:Z

    if-eqz v1, :cond_8

    .line 3415
    iget-object v1, p0, Landroid/support/v7/a/ah;->p:Landroid/support/v7/widget/bu;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/support/v7/widget/bu;->a(I)V

    :cond_8
    move-object v2, v0

    .line 3417
    goto/16 :goto_1

    .line 3394
    :cond_9
    iget-object v0, p0, Landroid/support/v7/a/ah;->b:Landroid/content/Context;

    goto :goto_2

    .line 3419
    :cond_a
    iget-boolean v1, p0, Landroid/support/v7/a/ah;->k:Z

    if-eqz v1, :cond_b

    .line 3420
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_screen_simple_overlay_action_mode:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 3426
    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_c

    .line 3429
    new-instance v0, Landroid/support/v7/a/aj;

    invoke-direct {v0, p0}, Landroid/support/v7/a/aj;-><init>(Landroid/support/v7/a/ah;)V

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    move-object v2, v1

    goto/16 :goto_1

    .line 3423
    :cond_b
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_screen_simple:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    goto :goto_3

    :cond_c
    move-object v0, v1

    .line 3451
    check-cast v0, Landroid/support/v7/widget/ck;

    new-instance v2, Landroid/support/v7/a/ak;

    invoke-direct {v2, p0}, Landroid/support/v7/a/ak;-><init>(Landroid/support/v7/a/ah;)V

    invoke-interface {v0, v2}, Landroid/support/v7/widget/ck;->setOnFitSystemWindowsListener(Landroid/support/v7/widget/cl;)V

    move-object v2, v1

    goto/16 :goto_1

    .line 3472
    :cond_d
    iget-object v0, p0, Landroid/support/v7/a/ah;->p:Landroid/support/v7/widget/bu;

    if-nez v0, :cond_e

    .line 3473
    sget v0, Landroid/support/v7/appcompat/R$id;->title:I

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/a/ah;->z:Landroid/widget/TextView;

    .line 3477
    :cond_e
    invoke-static {v2}, Landroid/support/v7/widget/gq;->b(Landroid/view/View;)V

    .line 3479
    sget v0, Landroid/support/v7/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ContentFrameLayout;

    .line 3482
    iget-object v1, p0, Landroid/support/v7/a/ah;->c:Landroid/view/Window;

    invoke-virtual {v1, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 3483
    if-eqz v1, :cond_10

    .line 3486
    :goto_4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_f

    .line 3487
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3488
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 3489
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ContentFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 3494
    :cond_f
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setId(I)V

    .line 3495
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ContentFrameLayout;->setId(I)V

    .line 3499
    instance-of v4, v1, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_10

    .line 3500
    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 3505
    :cond_10
    iget-object v1, p0, Landroid/support/v7/a/ah;->c:Landroid/view/Window;

    invoke-virtual {v1, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 3507
    new-instance v1, Landroid/support/v7/a/al;

    invoke-direct {v1, p0}, Landroid/support/v7/a/al;-><init>(Landroid/support/v7/a/ah;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ContentFrameLayout;->setAttachListener(Landroid/support/v7/widget/bt;)V

    .line 316
    iput-object v2, p0, Landroid/support/v7/a/ah;->v:Landroid/view/ViewGroup;

    .line 4297
    iget-object v0, p0, Landroid/support/v7/a/v;->d:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_19

    .line 4298
    iget-object v0, p0, Landroid/support/v7/a/v;->d:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 320
    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 321
    invoke-virtual {p0, v0}, Landroid/support/v7/a/ah;->b(Ljava/lang/CharSequence;)V

    .line 4523
    :cond_11
    iget-object v0, p0, Landroid/support/v7/a/ah;->v:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ContentFrameLayout;

    .line 4529
    iget-object v1, p0, Landroid/support/v7/a/ah;->c:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 4530
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 4531
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 4532
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 5083
    iget-object v5, v0, Landroid/support/v7/widget/ContentFrameLayout;->b:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 5084
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 5085
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->requestLayout()V

    .line 4534
    :cond_12
    iget-object v1, p0, Landroid/support/v7/a/ah;->b:Landroid/content/Context;

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 4535
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMajor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 4536
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMinor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 4538
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 4539
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    .line 4540
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    .line 4539
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 4542
    :cond_13
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 4543
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    .line 4544
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    .line 4543
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 4546
    :cond_14
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 4547
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    .line 4548
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v3

    .line 4547
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 4550
    :cond_15
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 4551
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    .line 4552
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v3

    .line 4551
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 4554
    :cond_16
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 4556
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->requestLayout()V

    .line 328
    iput-boolean v7, p0, Landroid/support/v7/a/ah;->y:Z

    .line 335
    invoke-direct {p0, v6}, Landroid/support/v7/a/ah;->f(I)Landroid/support/v7/a/at;

    move-result-object v0

    .line 5271
    iget-boolean v1, p0, Landroid/support/v7/a/v;->o:Z

    .line 336
    if-nez v1, :cond_18

    if-eqz v0, :cond_17

    iget-object v0, v0, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    if-nez v0, :cond_18

    .line 337
    :cond_17
    invoke-direct {p0, v8}, Landroid/support/v7/a/ah;->g(I)V

    .line 340
    :cond_18
    return-void

    .line 4301
    :cond_19
    iget-object v0, p0, Landroid/support/v7/a/v;->n:Ljava/lang/CharSequence;

    goto/16 :goto_5

    :cond_1a
    move-object v2, v3

    goto/16 :goto_1
.end method

.method private q()V
    .locals 2

    .prologue
    .line 1715
    iget-boolean v0, p0, Landroid/support/v7/a/ah;->y:Z

    if-eqz v0, :cond_0

    .line 1716
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1719
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 230
    invoke-direct {p0}, Landroid/support/v7/a/ah;->p()V

    .line 231
    iget-object v0, p0, Landroid/support/v7/a/ah;->c:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Landroid/support/v7/a/ah;->d:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/view/LayoutInflater$Factory;

    if-eqz v0, :cond_0

    .line 1078
    iget-object v0, p0, Landroid/support/v7/a/ah;->d:Landroid/view/Window$Callback;

    check-cast v0, Landroid/view/LayoutInflater$Factory;

    .line 1079
    invoke-interface {v0, p1, p2, p3}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 1080
    if-eqz v0, :cond_0

    .line 1084
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    .line 238
    iget-boolean v0, p0, Landroid/support/v7/a/ah;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/a/ah;->y:Z

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0}, Landroid/support/v7/a/ah;->a()Landroid/support/v7/a/a;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0, p1}, Landroid/support/v7/a/a;->a(Landroid/content/res/Configuration;)V

    .line 248
    :cond_0
    invoke-static {}, Landroid/support/v7/widget/ap;->a()Landroid/support/v7/widget/ap;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/a/ah;->b:Landroid/content/Context;

    .line 3209
    iget-object v2, v0, Landroid/support/v7/widget/ap;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 3210
    :try_start_0
    iget-object v0, v0, Landroid/support/v7/widget/ap;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/LongSparseArray;

    .line 3211
    if-eqz v0, :cond_1

    .line 3213
    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 3215
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-virtual {p0}, Landroid/support/v7/a/ah;->j()Z

    .line 252
    return-void

    .line 3215
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 152
    iget-object v0, p0, Landroid/support/v7/a/ah;->d:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Landroid/support/v7/a/ah;->d:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2149
    iget-object v0, p0, Landroid/support/v7/a/v;->g:Landroid/support/v7/a/a;

    .line 156
    if-nez v0, :cond_1

    .line 157
    iput-boolean v1, p0, Landroid/support/v7/a/ah;->K:Z

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Z)V

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/view/menu/o;)V
    .locals 6

    .prologue
    const/16 v5, 0x6c

    const/4 v4, 0x0

    .line 675
    .line 9195
    iget-object v0, p0, Landroid/support/v7/a/ah;->p:Landroid/support/v7/widget/bu;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/a/ah;->p:Landroid/support/v7/widget/bu;

    invoke-interface {v0}, Landroid/support/v7/widget/bu;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/a/ah;->b:Landroid/content/Context;

    .line 9196
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/a/ah;->p:Landroid/support/v7/widget/bu;

    .line 9197
    invoke-interface {v0}, Landroid/support/v7/widget/bu;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9279
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/v;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 9201
    iget-object v1, p0, Landroid/support/v7/a/ah;->p:Landroid/support/v7/widget/bu;

    invoke-interface {v1}, Landroid/support/v7/widget/bu;->b()Z

    move-result v1

    if-nez v1, :cond_3

    .line 9202
    if-eqz v0, :cond_2

    .line 10271
    iget-boolean v1, p0, Landroid/support/v7/a/v;->o:Z

    .line 9202
    if-nez v1, :cond_2

    .line 9204
    iget-boolean v1, p0, Landroid/support/v7/a/ah;->H:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/support/v7/a/ah;->I:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 9206
    iget-object v1, p0, Landroid/support/v7/a/ah;->c:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/a/ah;->J:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9207
    iget-object v1, p0, Landroid/support/v7/a/ah;->J:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 9210
    :cond_1
    invoke-direct {p0, v4}, Landroid/support/v7/a/ah;->f(I)Landroid/support/v7/a/at;

    move-result-object v1

    .line 9214
    iget-object v2, v1, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    if-eqz v2, :cond_2

    iget-boolean v2, v1, Landroid/support/v7/a/at;->r:Z

    if-nez v2, :cond_2

    iget-object v2, v1, Landroid/support/v7/a/at;->i:Landroid/view/View;

    iget-object v3, v1, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    .line 9215
    invoke-interface {v0, v4, v2, v3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9216
    iget-object v1, v1, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    invoke-interface {v0, v5, v1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 9217
    iget-object v0, p0, Landroid/support/v7/a/ah;->p:Landroid/support/v7/widget/bu;

    invoke-interface {v0}, Landroid/support/v7/widget/bu;->d()Z

    .line 9227
    :cond_2
    :goto_0
    return-void

    .line 9221
    :cond_3
    iget-object v1, p0, Landroid/support/v7/a/ah;->p:Landroid/support/v7/widget/bu;

    invoke-interface {v1}, Landroid/support/v7/widget/bu;->e()Z

    .line 11271
    iget-boolean v1, p0, Landroid/support/v7/a/v;->o:Z

    .line 9222
    if-nez v1, :cond_2

    .line 9223
    invoke-direct {p0, v4}, Landroid/support/v7/a/ah;->f(I)Landroid/support/v7/a/at;

    move-result-object v1

    .line 9224
    iget-object v1, v1, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    invoke-interface {v0, v5, v1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    .line 9230
    :cond_4
    invoke-direct {p0, v4}, Landroid/support/v7/a/ah;->f(I)Landroid/support/v7/a/at;

    move-result-object v0

    .line 9232
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/a/at;->q:Z

    .line 9233
    invoke-direct {p0, v0, v4}, Landroid/support/v7/a/ah;->a(Landroid/support/v7/a/at;Z)V

    .line 9235
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/a/ah;->a(Landroid/support/v7/a/at;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/widget/Toolbar;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 192
    iget-object v0, p0, Landroid/support/v7/a/ah;->d:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/a/ah;->a()Landroid/support/v7/a/a;

    move-result-object v0

    .line 198
    instance-of v1, v0, Landroid/support/v7/a/bi;

    if-eqz v1, :cond_1

    .line 199
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_1
    iput-object v2, p0, Landroid/support/v7/a/ah;->h:Landroid/view/MenuInflater;

    .line 209
    if-eqz v0, :cond_2

    .line 210
    invoke-virtual {v0}, Landroid/support/v7/a/a;->i()V

    .line 213
    :cond_2
    if-eqz p1, :cond_3

    .line 214
    new-instance v1, Landroid/support/v7/a/ay;

    iget-object v0, p0, Landroid/support/v7/a/ah;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 215
    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/a/ah;->e:Landroid/view/Window$Callback;

    invoke-direct {v1, p1, v0, v2}, Landroid/support/v7/a/ay;-><init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    .line 216
    iput-object v1, p0, Landroid/support/v7/a/ah;->g:Landroid/support/v7/a/a;

    .line 217
    iget-object v0, p0, Landroid/support/v7/a/ah;->c:Landroid/view/Window;

    .line 3082
    iget-object v1, v1, Landroid/support/v7/a/ay;->c:Landroid/view/Window$Callback;

    .line 217
    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 224
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/a/ah;->g()V

    goto :goto_0

    .line 219
    :cond_3
    iput-object v2, p0, Landroid/support/v7/a/ah;->g:Landroid/support/v7/a/a;

    .line 221
    iget-object v0, p0, Landroid/support/v7/a/ah;->c:Landroid/view/Window;

    iget-object v1, p0, Landroid/support/v7/a/ah;->e:Landroid/view/Window$Callback;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    goto :goto_1
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 272
    invoke-direct {p0}, Landroid/support/v7/a/ah;->p()V

    .line 273
    iget-object v0, p0, Landroid/support/v7/a/ah;->v:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 274
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 275
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 276
    iget-object v0, p0, Landroid/support/v7/a/ah;->d:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 277
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 290
    invoke-direct {p0}, Landroid/support/v7/a/ah;->p()V

    .line 291
    iget-object v0, p0, Landroid/support/v7/a/ah;->v:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 292
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 293
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    iget-object v0, p0, Landroid/support/v7/a/ah;->d:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 295
    return-void
.end method

.method final a(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 899
    invoke-virtual {p0}, Landroid/support/v7/a/ah;->a()Landroid/support/v7/a/a;

    move-result-object v2

    .line 900
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1, p2}, Landroid/support/v7/a/a;->a(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 930
    :cond_0
    :goto_0
    return v0

    .line 906
    :cond_1
    iget-object v2, p0, Landroid/support/v7/a/ah;->F:Landroid/support/v7/a/at;

    if-eqz v2, :cond_2

    .line 907
    iget-object v2, p0, Landroid/support/v7/a/ah;->F:Landroid/support/v7/a/at;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v2, v3, p2}, Landroid/support/v7/a/ah;->a(Landroid/support/v7/a/at;ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 909
    if-eqz v2, :cond_2

    .line 910
    iget-object v1, p0, Landroid/support/v7/a/ah;->F:Landroid/support/v7/a/at;

    if-eqz v1, :cond_0

    .line 911
    iget-object v1, p0, Landroid/support/v7/a/ah;->F:Landroid/support/v7/a/at;

    iput-boolean v0, v1, Landroid/support/v7/a/at;->n:Z

    goto :goto_0

    .line 921
    :cond_2
    iget-object v2, p0, Landroid/support/v7/a/ah;->F:Landroid/support/v7/a/at;

    if-nez v2, :cond_3

    .line 922
    invoke-direct {p0, v1}, Landroid/support/v7/a/ah;->f(I)Landroid/support/v7/a/at;

    move-result-object v2

    .line 923
    invoke-direct {p0, v2, p2}, Landroid/support/v7/a/ah;->b(Landroid/support/v7/a/at;Landroid/view/KeyEvent;)Z

    .line 924
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v2, v3, p2}, Landroid/support/v7/a/ah;->a(Landroid/support/v7/a/at;ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 925
    iput-boolean v1, v2, Landroid/support/v7/a/at;->m:Z

    .line 926
    if-nez v3, :cond_0

    :cond_3
    move v0, v1

    .line 930
    goto :goto_0
.end method

.method public final a(Landroid/support/v7/view/menu/o;Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 663
    .line 7279
    iget-object v0, p0, Landroid/support/v7/a/v;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 664
    if-eqz v0, :cond_0

    .line 8271
    iget-boolean v1, p0, Landroid/support/v7/a/v;->o:Z

    .line 664
    if-nez v1, :cond_0

    .line 665
    invoke-virtual {p1}, Landroid/support/v7/view/menu/o;->k()Landroid/support/v7/view/menu/o;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v7/a/ah;->a(Landroid/view/Menu;)Landroid/support/v7/a/at;

    move-result-object v1

    .line 666
    if-eqz v1, :cond_0

    .line 667
    iget v1, v1, Landroid/support/v7/a/at;->a:I

    invoke-interface {v0, v1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 670
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(Landroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 935
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x52

    if-ne v0, v3, :cond_1

    .line 937
    iget-object v0, p0, Landroid/support/v7/a/ah;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12969
    :cond_0
    :goto_0
    return v1

    .line 942
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 943
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 944
    if-nez v0, :cond_3

    move v0, v1

    .line 946
    :goto_1
    if-eqz v0, :cond_5

    .line 11977
    sparse-switch v3, :sswitch_data_0

    .line 11993
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_2

    .line 11996
    invoke-virtual {p0, v3, p1}, Landroid/support/v7/a/ah;->a(ILandroid/view/KeyEvent;)Z

    :cond_2
    move v1, v2

    .line 946
    goto :goto_0

    :cond_3
    move v0, v2

    .line 944
    goto :goto_1

    .line 12457
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 12458
    invoke-direct {p0, v2}, Landroid/support/v7/a/ah;->f(I)Landroid/support/v7/a/at;

    move-result-object v0

    .line 12459
    iget-boolean v2, v0, Landroid/support/v7/a/at;->o:Z

    if-nez v2, :cond_0

    .line 12460
    invoke-direct {p0, v0, p1}, Landroid/support/v7/a/ah;->b(Landroid/support/v7/a/at;Landroid/view/KeyEvent;)Z

    goto :goto_0

    .line 11987
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/support/v7/a/ah;->G:Z

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    .line 12950
    :cond_5
    sparse-switch v3, :sswitch_data_1

    :cond_6
    move v1, v2

    .line 946
    goto :goto_0

    .line 13468
    :sswitch_2
    iget-object v0, p0, Landroid/support/v7/a/ah;->q:Landroid/support/v7/view/b;

    if-nez v0, :cond_0

    .line 13473
    invoke-direct {p0, v2}, Landroid/support/v7/a/ah;->f(I)Landroid/support/v7/a/at;

    move-result-object v3

    .line 13474
    iget-object v0, p0, Landroid/support/v7/a/ah;->p:Landroid/support/v7/widget/bu;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/a/ah;->p:Landroid/support/v7/widget/bu;

    .line 13475
    invoke-interface {v0}, Landroid/support/v7/widget/bu;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/a/ah;->b:Landroid/content/Context;

    .line 13476
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 13477
    iget-object v0, p0, Landroid/support/v7/a/ah;->p:Landroid/support/v7/widget/bu;

    invoke-interface {v0}, Landroid/support/v7/widget/bu;->b()Z

    move-result v0

    if-nez v0, :cond_7

    .line 14271
    iget-boolean v0, p0, Landroid/support/v7/a/v;->o:Z

    .line 13478
    if-nez v0, :cond_f

    invoke-direct {p0, v3, p1}, Landroid/support/v7/a/ah;->b(Landroid/support/v7/a/at;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 13479
    iget-object v0, p0, Landroid/support/v7/a/ah;->p:Landroid/support/v7/widget/bu;

    invoke-interface {v0}, Landroid/support/v7/widget/bu;->d()Z

    move-result v0

    .line 13508
    :goto_4
    if-eqz v0, :cond_0

    .line 13509
    iget-object v0, p0, Landroid/support/v7/a/ah;->b:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 13511
    if-eqz v0, :cond_b

    .line 13512
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_0

    .line 13482
    :cond_7
    iget-object v0, p0, Landroid/support/v7/a/ah;->p:Landroid/support/v7/widget/bu;

    invoke-interface {v0}, Landroid/support/v7/widget/bu;->e()Z

    move-result v0

    goto :goto_4

    .line 13485
    :cond_8
    iget-boolean v0, v3, Landroid/support/v7/a/at;->o:Z

    if-nez v0, :cond_9

    iget-boolean v0, v3, Landroid/support/v7/a/at;->n:Z

    if-eqz v0, :cond_a

    .line 13488
    :cond_9
    iget-boolean v0, v3, Landroid/support/v7/a/at;->o:Z

    .line 13490
    invoke-direct {p0, v3, v1}, Landroid/support/v7/a/ah;->a(Landroid/support/v7/a/at;Z)V

    goto :goto_4

    .line 13491
    :cond_a
    iget-boolean v0, v3, Landroid/support/v7/a/at;->m:Z

    if-eqz v0, :cond_f

    .line 13493
    iget-boolean v0, v3, Landroid/support/v7/a/at;->r:Z

    if-eqz v0, :cond_10

    .line 13496
    iput-boolean v2, v3, Landroid/support/v7/a/at;->m:Z

    .line 13497
    invoke-direct {p0, v3, p1}, Landroid/support/v7/a/ah;->b(Landroid/support/v7/a/at;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 13500
    :goto_5
    if-eqz v0, :cond_f

    .line 13502
    invoke-direct {p0, v3, p1}, Landroid/support/v7/a/ah;->a(Landroid/support/v7/a/at;Landroid/view/KeyEvent;)V

    move v0, v1

    .line 13503
    goto :goto_4

    .line 13514
    :cond_b
    const-string v0, "AppCompatDelegate"

    const-string v2, "Couldn\'t get audio manager"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 12955
    :sswitch_3
    iget-boolean v0, p0, Landroid/support/v7/a/ah;->G:Z

    .line 12956
    iput-boolean v2, p0, Landroid/support/v7/a/ah;->G:Z

    .line 12958
    invoke-direct {p0, v2}, Landroid/support/v7/a/ah;->f(I)Landroid/support/v7/a/at;

    move-result-object v3

    .line 12959
    if-eqz v3, :cond_c

    iget-boolean v4, v3, Landroid/support/v7/a/at;->o:Z

    if-eqz v4, :cond_c

    .line 12960
    if-nez v0, :cond_0

    .line 12964
    invoke-direct {p0, v3, v1}, Landroid/support/v7/a/ah;->a(Landroid/support/v7/a/at;Z)V

    goto/16 :goto_0

    .line 14881
    :cond_c
    iget-object v0, p0, Landroid/support/v7/a/ah;->q:Landroid/support/v7/view/b;

    if-eqz v0, :cond_d

    .line 14882
    iget-object v0, p0, Landroid/support/v7/a/ah;->q:Landroid/support/v7/view/b;

    invoke-virtual {v0}, Landroid/support/v7/view/b;->c()V

    move v0, v1

    .line 12968
    :goto_6
    if-eqz v0, :cond_6

    goto/16 :goto_0

    .line 14887
    :cond_d
    invoke-virtual {p0}, Landroid/support/v7/a/ah;->a()Landroid/support/v7/a/a;

    move-result-object v0

    .line 14888
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/support/v7/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    .line 14889
    goto :goto_6

    :cond_e
    move v0, v2

    .line 14893
    goto :goto_6

    :cond_f
    move v0, v2

    goto :goto_4

    :cond_10
    move v0, v1

    goto :goto_5

    .line 11977
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch

    .line 12950
    :sswitch_data_1
    .sparse-switch
        0x4 -> :sswitch_3
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method public final b(I)V
    .locals 2

    .prologue
    .line 281
    invoke-direct {p0}, Landroid/support/v7/a/ah;->p()V

    .line 282
    iget-object v0, p0, Landroid/support/v7/a/ah;->v:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 283
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 284
    iget-object v1, p0, Landroid/support/v7/a/ah;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 285
    iget-object v0, p0, Landroid/support/v7/a/ah;->d:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 286
    return-void
.end method

.method public final b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 299
    invoke-direct {p0}, Landroid/support/v7/a/ah;->p()V

    .line 300
    iget-object v0, p0, Landroid/support/v7/a/ah;->v:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 301
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    iget-object v0, p0, Landroid/support/v7/a/ah;->d:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 303
    return-void
.end method

.method final b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Landroid/support/v7/a/ah;->p:Landroid/support/v7/widget/bu;

    if-eqz v0, :cond_1

    .line 624
    iget-object v0, p0, Landroid/support/v7/a/ah;->p:Landroid/support/v7/widget/bu;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/bu;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 6149
    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/v;->g:Landroid/support/v7/a/a;

    .line 625
    if-eqz v0, :cond_2

    .line 7149
    iget-object v0, p0, Landroid/support/v7/a/v;->g:Landroid/support/v7/a/a;

    .line 626
    invoke-virtual {v0, p1}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 627
    :cond_2
    iget-object v0, p0, Landroid/support/v7/a/ah;->z:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Landroid/support/v7/a/ah;->z:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Landroid/support/v7/a/ah;->p()V

    .line 169
    return-void
.end method

.method public final c(I)Z
    .locals 5

    .prologue
    const/16 v0, 0x6c

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 561
    .line 5722
    const/16 v3, 0x8

    if-ne p1, v3, :cond_1

    .line 5723
    const-string v3, "AppCompatDelegate"

    const-string v4, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 563
    :cond_0
    :goto_0
    iget-boolean v3, p0, Landroid/support/v7/a/ah;->m:Z

    if-eqz v3, :cond_2

    if-ne p1, v0, :cond_2

    move v0, v1

    .line 598
    :goto_1
    return v0

    .line 5726
    :cond_1
    const/16 v3, 0x9

    if-ne p1, v3, :cond_0

    .line 5727
    const-string v3, "AppCompatDelegate"

    const-string v4, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5729
    const/16 p1, 0x6d

    goto :goto_0

    .line 566
    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/a/ah;->i:Z

    if-eqz v0, :cond_3

    if-ne p1, v2, :cond_3

    .line 568
    iput-boolean v1, p0, Landroid/support/v7/a/ah;->i:Z

    .line 571
    :cond_3
    sparse-switch p1, :sswitch_data_0

    .line 598
    iget-object v0, p0, Landroid/support/v7/a/ah;->c:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    goto :goto_1

    .line 573
    :sswitch_0
    invoke-direct {p0}, Landroid/support/v7/a/ah;->q()V

    .line 574
    iput-boolean v2, p0, Landroid/support/v7/a/ah;->i:Z

    move v0, v2

    .line 575
    goto :goto_1

    .line 577
    :sswitch_1
    invoke-direct {p0}, Landroid/support/v7/a/ah;->q()V

    .line 578
    iput-boolean v2, p0, Landroid/support/v7/a/ah;->j:Z

    move v0, v2

    .line 579
    goto :goto_1

    .line 581
    :sswitch_2
    invoke-direct {p0}, Landroid/support/v7/a/ah;->q()V

    .line 582
    iput-boolean v2, p0, Landroid/support/v7/a/ah;->k:Z

    move v0, v2

    .line 583
    goto :goto_1

    .line 585
    :sswitch_3
    invoke-direct {p0}, Landroid/support/v7/a/ah;->q()V

    .line 586
    iput-boolean v2, p0, Landroid/support/v7/a/ah;->B:Z

    move v0, v2

    .line 587
    goto :goto_1

    .line 589
    :sswitch_4
    invoke-direct {p0}, Landroid/support/v7/a/ah;->q()V

    .line 590
    iput-boolean v2, p0, Landroid/support/v7/a/ah;->C:Z

    move v0, v2

    .line 591
    goto :goto_1

    .line 593
    :sswitch_5
    invoke-direct {p0}, Landroid/support/v7/a/ah;->q()V

    .line 594
    iput-boolean v2, p0, Landroid/support/v7/a/ah;->m:Z

    move v0, v2

    .line 595
    goto :goto_1

    .line 571
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_3
        0x5 -> :sswitch_4
        0xa -> :sswitch_2
        0x6c -> :sswitch_0
        0x6d -> :sswitch_1
    .end sparse-switch
.end method

.method final d(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 634
    const/16 v0, 0x6c

    if-ne p1, v0, :cond_1

    .line 635
    invoke-virtual {p0}, Landroid/support/v7/a/ah;->a()Landroid/support/v7/a/a;

    move-result-object v0

    .line 636
    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {v0, v2}, Landroid/support/v7/a/a;->c(Z)V

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    if-nez p1, :cond_0

    .line 642
    invoke-direct {p0, p1}, Landroid/support/v7/a/ah;->f(I)Landroid/support/v7/a/at;

    move-result-object v0

    .line 643
    iget-boolean v1, v0, Landroid/support/v7/a/at;->o:Z

    if-eqz v1, :cond_0

    .line 644
    invoke-direct {p0, v0, v2}, Landroid/support/v7/a/ah;->a(Landroid/support/v7/a/at;Z)V

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 256
    invoke-virtual {p0}, Landroid/support/v7/a/ah;->a()Landroid/support/v7/a/a;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_0

    .line 258
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->b(Z)V

    .line 260
    :cond_0
    return-void
.end method

.method final e(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 651
    const/16 v1, 0x6c

    if-ne p1, v1, :cond_1

    .line 652
    invoke-virtual {p0}, Landroid/support/v7/a/ah;->a()Landroid/support/v7/a/a;

    move-result-object v1

    .line 653
    if-eqz v1, :cond_0

    .line 654
    invoke-virtual {v1, v0}, Landroid/support/v7/a/a;->c(Z)V

    .line 658
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 264
    invoke-virtual {p0}, Landroid/support/v7/a/ah;->a()Landroid/support/v7/a/a;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_0

    .line 266
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->b(Z)V

    .line 268
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 708
    invoke-virtual {p0}, Landroid/support/v7/a/ah;->a()Landroid/support/v7/a/a;

    move-result-object v0

    .line 709
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    :goto_0
    return-void

    .line 711
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/a/ah;->g(I)V

    goto :goto_0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 307
    invoke-super {p0}, Landroid/support/v7/a/v;->h()V

    .line 309
    iget-object v0, p0, Landroid/support/v7/a/ah;->g:Landroid/support/v7/a/a;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Landroid/support/v7/a/ah;->g:Landroid/support/v7/a/a;

    invoke-virtual {v0}, Landroid/support/v7/a/a;->i()V

    .line 312
    :cond_0
    return-void
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 1047
    iget-object v0, p0, Landroid/support/v7/a/ah;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1048
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1049
    invoke-static {v0, p0}, Landroid/support/v4/view/LayoutInflaterCompat;->setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V

    .line 1057
    :cond_0
    :goto_0
    return-void

    .line 1051
    :cond_1
    invoke-static {v0}, Landroid/support/v4/view/LayoutInflaterCompat;->getFactory(Landroid/view/LayoutInflater;)Landroid/support/v4/view/LayoutInflaterFactory;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/a/ah;

    if-nez v0, :cond_0

    .line 1053
    const-string v0, "AppCompatDelegate"

    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final l()V
    .locals 3

    .prologue
    .line 173
    invoke-direct {p0}, Landroid/support/v7/a/ah;->p()V

    .line 175
    iget-boolean v0, p0, Landroid/support/v7/a/ah;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/a/ah;->g:Landroid/support/v7/a/a;

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/ah;->d:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 180
    new-instance v1, Landroid/support/v7/a/bi;

    iget-object v0, p0, Landroid/support/v7/a/ah;->d:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Landroid/support/v7/a/ah;->j:Z

    invoke-direct {v1, v0, v2}, Landroid/support/v7/a/bi;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Landroid/support/v7/a/ah;->g:Landroid/support/v7/a/a;

    .line 185
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/v7/a/ah;->g:Landroid/support/v7/a/a;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Landroid/support/v7/a/ah;->g:Landroid/support/v7/a/a;

    iget-boolean v1, p0, Landroid/support/v7/a/ah;->K:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Z)V

    goto :goto_0

    .line 182
    :cond_3
    iget-object v0, p0, Landroid/support/v7/a/ah;->d:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 183
    new-instance v1, Landroid/support/v7/a/bi;

    iget-object v0, p0, Landroid/support/v7/a/ah;->d:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Landroid/support/v7/a/bi;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Landroid/support/v7/a/ah;->g:Landroid/support/v7/a/a;

    goto :goto_1
.end method

.method final n()Z
    .locals 1

    .prologue
    .line 870
    iget-boolean v0, p0, Landroid/support/v7/a/ah;->y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/a/ah;->v:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/a/ah;->v:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final o()V
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Landroid/support/v7/a/ah;->u:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Landroid/support/v7/a/ah;->u:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 877
    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1066
    invoke-virtual {p0, p2, p3, p4}, Landroid/support/v7/a/ah;->a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 1067
    if-eqz v0, :cond_1

    .line 1072
    :cond_0
    :goto_0
    return-object v0

    .line 15004
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_5

    move v2, v3

    .line 15006
    :goto_1
    iget-object v0, p0, Landroid/support/v7/a/ah;->N:Landroid/support/v7/a/aw;

    if-nez v0, :cond_2

    .line 15007
    new-instance v0, Landroid/support/v7/a/aw;

    invoke-direct {v0}, Landroid/support/v7/a/aw;-><init>()V

    iput-object v0, p0, Landroid/support/v7/a/ah;->N:Landroid/support/v7/a/aw;

    .line 15011
    :cond_2
    if-eqz v2, :cond_a

    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    .line 15021
    if-nez v0, :cond_6

    move v0, v4

    .line 15011
    :goto_2
    if-eqz v0, :cond_a

    move v0, v3

    .line 15013
    :goto_3
    iget-object v5, p0, Landroid/support/v7/a/ah;->N:Landroid/support/v7/a/aw;

    .line 15016
    invoke-static {}, Landroid/support/v7/widget/gl;->a()Z

    move-result v1

    .line 15087
    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    .line 15088
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 15092
    :goto_4
    invoke-static {v0, p4, v2}, Landroid/support/v7/a/aw;->a(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroid/content/Context;

    move-result-object v0

    .line 15094
    if-eqz v1, :cond_3

    .line 15095
    invoke-static {v0}, Landroid/support/v7/widget/fx;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 15098
    :cond_3
    const/4 v1, 0x0

    .line 15101
    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_4
    move v4, v2

    :goto_5
    packed-switch v4, :pswitch_data_0

    .line 15143
    :goto_6
    if-nez v1, :cond_b

    if-eq p3, v0, :cond_b

    .line 15146
    invoke-virtual {v5, v0, p2, p4}, Landroid/support/v7/a/aw;->a(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 15149
    :goto_7
    if-eqz v0, :cond_0

    .line 15151
    invoke-static {v0, p4}, Landroid/support/v7/a/aw;->a(Landroid/view/View;Landroid/util/AttributeSet;)V

    goto :goto_0

    :cond_5
    move v2, v4

    .line 15004
    goto :goto_1

    .line 15025
    :cond_6
    iget-object v1, p0, Landroid/support/v7/a/ah;->c:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    move-object v1, v0

    .line 15027
    :goto_8
    if-nez v1, :cond_7

    move v0, v3

    .line 15032
    goto :goto_2

    .line 15033
    :cond_7
    if-eq v1, v5, :cond_8

    instance-of v0, v1, Landroid/view/View;

    if-eqz v0, :cond_8

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    .line 15034
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move v0, v4

    .line 15039
    goto :goto_2

    .line 15041
    :cond_9
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_8

    :cond_a
    move v0, v4

    .line 15011
    goto :goto_3

    .line 15101
    :sswitch_0
    const-string v3, "TextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_5

    :sswitch_1
    const-string v4, "ImageView"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v3

    goto :goto_5

    :sswitch_2
    const-string v3, "Button"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x2

    goto :goto_5

    :sswitch_3
    const-string v3, "EditText"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x3

    goto :goto_5

    :sswitch_4
    const-string v3, "Spinner"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x4

    goto :goto_5

    :sswitch_5
    const-string v3, "ImageButton"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x5

    goto :goto_5

    :sswitch_6
    const-string v3, "CheckBox"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x6

    goto :goto_5

    :sswitch_7
    const-string v3, "RadioButton"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x7

    goto/16 :goto_5

    :sswitch_8
    const-string v3, "CheckedTextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0x8

    goto/16 :goto_5

    :sswitch_9
    const-string v3, "AutoCompleteTextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0x9

    goto/16 :goto_5

    :sswitch_a
    const-string v3, "MultiAutoCompleteTextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0xa

    goto/16 :goto_5

    :sswitch_b
    const-string v3, "RatingBar"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0xb

    goto/16 :goto_5

    :sswitch_c
    const-string v3, "SeekBar"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0xc

    goto/16 :goto_5

    .line 15103
    :pswitch_0
    new-instance v1, Landroid/support/v7/widget/bp;

    invoke-direct {v1, v0, p4}, Landroid/support/v7/widget/bp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_6

    .line 15106
    :pswitch_1
    new-instance v1, Landroid/support/v7/widget/ax;

    invoke-direct {v1, v0, p4}, Landroid/support/v7/widget/ax;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_6

    .line 15109
    :pswitch_2
    new-instance v1, Landroid/support/v7/widget/al;

    invoke-direct {v1, v0, p4}, Landroid/support/v7/widget/al;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_6

    .line 15112
    :pswitch_3
    new-instance v1, Landroid/support/v7/widget/au;

    invoke-direct {v1, v0, p4}, Landroid/support/v7/widget/au;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_6

    .line 15115
    :pswitch_4
    new-instance v1, Landroid/support/v7/widget/bg;

    invoke-direct {v1, v0, p4}, Landroid/support/v7/widget/bg;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_6

    .line 15118
    :pswitch_5
    new-instance v1, Landroid/support/v7/widget/av;

    invoke-direct {v1, v0, p4}, Landroid/support/v7/widget/av;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_6

    .line 15121
    :pswitch_6
    new-instance v1, Landroid/support/v7/widget/am;

    invoke-direct {v1, v0, p4}, Landroid/support/v7/widget/am;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_6

    .line 15124
    :pswitch_7
    new-instance v1, Landroid/support/v7/widget/bc;

    invoke-direct {v1, v0, p4}, Landroid/support/v7/widget/bc;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_6

    .line 15127
    :pswitch_8
    new-instance v1, Landroid/support/v7/widget/an;

    invoke-direct {v1, v0, p4}, Landroid/support/v7/widget/an;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_6

    .line 15130
    :pswitch_9
    new-instance v1, Landroid/support/v7/widget/ai;

    invoke-direct {v1, v0, p4}, Landroid/support/v7/widget/ai;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_6

    .line 15133
    :pswitch_a
    new-instance v1, Landroid/support/v7/widget/ay;

    invoke-direct {v1, v0, p4}, Landroid/support/v7/widget/ay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_6

    .line 15136
    :pswitch_b
    new-instance v1, Landroid/support/v7/widget/bd;

    invoke-direct {v1, v0, p4}, Landroid/support/v7/widget/bd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_6

    .line 15139
    :pswitch_c
    new-instance v1, Landroid/support/v7/widget/be;

    invoke-direct {v1, v0, p4}, Landroid/support/v7/widget/be;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_6

    :cond_b
    move-object v0, v1

    goto/16 :goto_7

    :cond_c
    move-object v0, p3

    goto/16 :goto_4

    .line 15101
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_b
        -0x56c015e7 -> :sswitch_8
        -0x503aa7ad -> :sswitch_a
        -0x37f7066e -> :sswitch_0
        -0x37e04bb3 -> :sswitch_5
        -0x274065a5 -> :sswitch_c
        -0x1440b607 -> :sswitch_4
        0x2e46a6ed -> :sswitch_7
        0x431b5280 -> :sswitch_1
        0x5445f9ba -> :sswitch_9
        0x5f7507c3 -> :sswitch_6
        0x63577677 -> :sswitch_3
        0x77471352 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
