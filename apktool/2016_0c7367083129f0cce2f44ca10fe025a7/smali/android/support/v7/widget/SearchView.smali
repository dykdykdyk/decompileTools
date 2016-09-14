.class public final Landroid/support/v7/widget/SearchView;
.super Landroid/support/v7/widget/ct;
.source "SearchView.java"

# interfaces
.implements Landroid/support/v7/view/d;


# static fields
.field static final a:Landroid/support/v7/widget/fh;


# instance fields
.field private A:Z

.field private B:Landroid/support/v4/widget/CursorAdapter;

.field private C:Z

.field private D:Ljava/lang/CharSequence;

.field private E:Z

.field private F:Z

.field private G:I

.field private H:Z

.field private I:Ljava/lang/CharSequence;

.field private J:Z

.field private K:I

.field private L:Landroid/app/SearchableInfo;

.field private M:Landroid/os/Bundle;

.field private N:Ljava/lang/Runnable;

.field private final O:Ljava/lang/Runnable;

.field private P:Ljava/lang/Runnable;

.field private final Q:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

.field private final c:Landroid/view/View;

.field private final d:Landroid/view/View;

.field private final e:Landroid/widget/ImageView;

.field private final f:Landroid/widget/ImageView;

.field private final g:Landroid/widget/ImageView;

.field private final h:Landroid/widget/ImageView;

.field private i:Landroid/support/v7/widget/fm;

.field private j:Landroid/graphics/Rect;

.field private k:Landroid/graphics/Rect;

.field private l:[I

.field private m:[I

.field private final n:Landroid/widget/ImageView;

.field private final o:Landroid/graphics/drawable/Drawable;

.field private final p:I

.field private final q:I

.field private final r:Landroid/content/Intent;

.field private final s:Landroid/content/Intent;

.field private final t:Ljava/lang/CharSequence;

.field private u:Landroid/support/v7/widget/fj;

.field private v:Landroid/support/v7/widget/fi;

.field private w:Landroid/view/View$OnFocusChangeListener;

.field private x:Landroid/support/v7/widget/fk;

.field private y:Landroid/view/View$OnClickListener;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 178
    new-instance v0, Landroid/support/v7/widget/fh;

    invoke-direct {v0}, Landroid/support/v7/widget/fh;-><init>()V

    sput-object v0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/fh;

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/SearchView;)V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 900
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->A:Z

    .line 902
    if-eqz p1, :cond_6

    move v0, v1

    .line 904
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v4

    .line 906
    :goto_1
    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->e:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7946
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->C:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->e()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_10

    if-nez v3, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->H:Z

    if-nez v0, :cond_10

    :cond_0
    move v0, v1

    .line 7950
    :goto_2
    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->f:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 908
    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/view/View;

    if-eqz p1, :cond_8

    move v0, v2

    :goto_3
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 911
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->n:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->z:Z

    if-eqz v0, :cond_9

    :cond_1
    move v0, v2

    .line 916
    :goto_4
    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->n:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7964
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    move v5, v4

    .line 7967
    :goto_5
    if-nez v5, :cond_2

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->z:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->J:Z

    if-nez v0, :cond_b

    :cond_2
    move v0, v4

    .line 7968
    :goto_6
    iget-object v6, p0, Landroid/support/v7/widget/SearchView;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    move v0, v1

    :goto_7
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7969
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 7970
    if-eqz v6, :cond_3

    .line 7971
    if-eqz v5, :cond_d

    sget-object v0, Landroid/support/v7/widget/SearchView;->ENABLED_STATE_SET:[I

    :goto_8
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 919
    :cond_3
    if-nez v3, :cond_e

    .line 8200
    :goto_9
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->H:Z

    if-eqz v0, :cond_f

    .line 8716
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->A:Z

    .line 8200
    if-nez v0, :cond_f

    if-eqz v4, :cond_f

    .line 8202
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    move v0, v1

    .line 8204
    :goto_a
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->h:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8955
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->f:Landroid/widget/ImageView;

    .line 8956
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->h:Landroid/widget/ImageView;

    .line 8957
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    move v2, v1

    .line 8960
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 921
    return-void

    :cond_6
    move v0, v2

    .line 902
    goto/16 :goto_0

    :cond_7
    move v3, v1

    .line 904
    goto/16 :goto_1

    :cond_8
    move v0, v1

    .line 908
    goto :goto_3

    :cond_9
    move v0, v1

    .line 914
    goto :goto_4

    :cond_a
    move v5, v1

    .line 7964
    goto :goto_5

    :cond_b
    move v0, v1

    .line 7967
    goto :goto_6

    :cond_c
    move v0, v2

    .line 7968
    goto :goto_7

    .line 7971
    :cond_d
    sget-object v0, Landroid/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_8

    :cond_e
    move v4, v1

    .line 919
    goto :goto_9

    :cond_f
    move v0, v2

    goto :goto_a

    :cond_10
    move v0, v2

    goto/16 :goto_2
.end method

.method static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 1744
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 941
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->C:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->H:Z

    if-eqz v0, :cond_1

    .line 9716
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->A:Z

    .line 941
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->O:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 977
    return-void
.end method

.method private g()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1148
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1149
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 10134
    :cond_0
    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->z:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->o:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    .line 1149
    :cond_1
    :goto_0
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    .line 1150
    return-void

    .line 10138
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getTextSize()F

    move-result v1

    float-to-double v4, v1

    const-wide/high16 v6, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v4, v6

    double-to-int v1, v4

    .line 10139
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v8, v8, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 10141
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string v3, "   "

    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 10142
    new-instance v3, Landroid/text/style/ImageSpan;

    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->o:Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/16 v6, 0x21

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 10143
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v0, v1

    .line 10144
    goto :goto_0
.end method

.method private getPreferredHeight()I
    .locals 2

    .prologue
    .line 895
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$dimen;->abc_search_view_preferred_height:I

    .line 896
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getPreferredWidth()I
    .locals 2

    .prologue
    .line 890
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$dimen;->abc_search_view_preferred_width:I

    .line 891
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private setImeVisibility(Z)V
    .locals 3

    .prologue
    .line 1001
    if-eqz p1, :cond_1

    .line 1002
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->N:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 1012
    :cond_0
    :goto_0
    return-void

    .line 1004
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->N:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1006
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1008
    if-eqz v0, :cond_0

    .line 1009
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 1337
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->J:Z

    if-eqz v0, :cond_0

    .line 1344
    :goto_0
    return-void

    .line 1339
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->J:Z

    .line 1340
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SearchView;->K:I

    .line 1341
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroid/support/v7/widget/SearchView;->K:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1342
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1343
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setIconified(Z)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 1325
    const-string v0, ""

    .line 11604
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 11606
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 11607
    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->I:Ljava/lang/CharSequence;

    .line 1326
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 1327
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 1328
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroid/support/v7/widget/SearchView;->K:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1329
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->J:Z

    .line 1330
    return-void
.end method

.method public final clearFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 530
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->F:Z

    .line 531
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 532
    invoke-super {p0}, Landroid/support/v7/widget/ct;->clearFocus()V

    .line 533
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->clearFocus()V

    .line 534
    iput-boolean v1, p0, Landroid/support/v7/widget/SearchView;->F:Z

    .line 535
    return-void
.end method

.method final d()V
    .locals 3

    .prologue
    .line 1304
    .line 10716
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->A:Z

    .line 1304
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 1307
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->f()V

    .line 1308
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10739
    sget-object v0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/fh;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    .line 11042
    iget-object v2, v0, Landroid/support/v7/widget/fh;->a:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 11044
    :try_start_0
    iget-object v0, v0, Landroid/support/v7/widget/fh;->a:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 10740
    :cond_0
    :goto_0
    sget-object v0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/fh;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    .line 11051
    iget-object v2, v0, Landroid/support/v7/widget/fh;->b:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 11053
    :try_start_1
    iget-object v0, v0, Landroid/support/v7/widget/fh;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 11055
    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final getImeOptions()I
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public final getInputType()I
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getInputType()I

    move-result v0

    return v0
.end method

.method public final getMaxWidth()I
    .locals 1

    .prologue
    .line 810
    iget v0, p0, Landroid/support/v7/widget/SearchView;->G:I

    return v0
.end method

.method public final getQuery()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public final getQueryHint()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 652
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->D:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->D:Ljava/lang/CharSequence;

    .line 659
    :goto_0
    return-object v0

    .line 654
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 655
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 657
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->t:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method final getSuggestionCommitIconResId()I
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Landroid/support/v7/widget/SearchView;->q:I

    return v0
.end method

.method final getSuggestionRowLayout()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Landroid/support/v7/widget/SearchView;->p:I

    return v0
.end method

.method public final getSuggestionsAdapter()Landroid/support/v4/widget/CursorAdapter;
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->B:Landroid/support/v4/widget/CursorAdapter;

    return-object v0
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 995
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->O:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 996
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->P:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 997
    invoke-super {p0}, Landroid/support/v7/widget/ct;->onDetachedFromWindow()V

    .line 998
    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 863
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/ct;->onLayout(ZIIII)V

    .line 865
    if-eqz p1, :cond_0

    .line 868
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->j:Landroid/graphics/Rect;

    .line 7882
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->l:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 7883
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->m:[I

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/SearchView;->getLocationInWindow([I)V

    .line 7884
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->l:[I

    aget v2, v2, v4

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->m:[I

    aget v3, v3, v4

    sub-int/2addr v2, v3

    .line 7885
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->l:[I

    aget v3, v3, v5

    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->m:[I

    aget v4, v4, v5

    sub-int/2addr v3, v4

    .line 7886
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v1, v3, v2, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 869
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->j:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->j:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v3, p5, p3

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 871
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->i:Landroid/support/v7/widget/fm;

    if-nez v0, :cond_1

    .line 872
    new-instance v0, Landroid/support/v7/widget/fm;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->j:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/fm;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->i:Landroid/support/v7/widget/fm;

    .line 874
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->i:Landroid/support/v7/widget/fm;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 876
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->i:Landroid/support/v7/widget/fm;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->j:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/fm;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected final onMeasure(II)V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 816
    .line 7716
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->A:Z

    .line 816
    if-eqz v0, :cond_0

    .line 817
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/ct;->onMeasure(II)V

    .line 859
    :goto_0
    return-void

    .line 821
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 822
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 824
    sparse-switch v1, :sswitch_data_0

    .line 846
    :cond_1
    :goto_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 847
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 849
    sparse-switch v2, :sswitch_data_1

    .line 857
    :goto_2
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 858
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 857
    invoke-super {p0, v0, v1}, Landroid/support/v7/widget/ct;->onMeasure(II)V

    goto :goto_0

    .line 827
    :sswitch_0
    iget v1, p0, Landroid/support/v7/widget/SearchView;->G:I

    if-lez v1, :cond_2

    .line 828
    iget v1, p0, Landroid/support/v7/widget/SearchView;->G:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 830
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredWidth()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 835
    :sswitch_1
    iget v1, p0, Landroid/support/v7/widget/SearchView;->G:I

    if-lez v1, :cond_1

    .line 836
    iget v1, p0, Landroid/support/v7/widget/SearchView;->G:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 841
    :sswitch_2
    iget v0, p0, Landroid/support/v7/widget/SearchView;->G:I

    if-lez v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/SearchView;->G:I

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredWidth()I

    move-result v0

    goto :goto_1

    .line 852
    :sswitch_3
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredHeight()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    .line 824
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch

    .line 849
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x0 -> :sswitch_3
    .end sparse-switch
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 1395
    instance-of v0, p1, Landroid/support/v7/widget/SearchView$SavedState;

    if-nez v0, :cond_0

    .line 1396
    invoke-super {p0, p1}, Landroid/support/v7/widget/ct;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1403
    :goto_0
    return-void

    .line 1399
    :cond_0
    check-cast p1, Landroid/support/v7/widget/SearchView$SavedState;

    .line 1400
    invoke-virtual {p1}, Landroid/support/v7/widget/SearchView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/widget/ct;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1401
    iget-boolean v0, p1, Landroid/support/v7/widget/SearchView$SavedState;->a:Z

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 1402
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->requestLayout()V

    goto :goto_0
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1387
    invoke-super {p0}, Landroid/support/v7/widget/ct;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1388
    new-instance v1, Landroid/support/v7/widget/SearchView$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/SearchView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 11716
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->A:Z

    .line 1389
    iput-boolean v0, v1, Landroid/support/v7/widget/SearchView$SavedState;->a:Z

    .line 1390
    return-object v1
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 1315
    invoke-super {p0, p1}, Landroid/support/v7/widget/ct;->onWindowFocusChanged(Z)V

    .line 1317
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->f()V

    .line 1318
    return-void
.end method

.method public final requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 512
    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->F:Z

    if-eqz v1, :cond_1

    .line 523
    :cond_0
    :goto_0
    return v0

    .line 514
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5716
    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->A:Z

    .line 516
    if-nez v1, :cond_3

    .line 517
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 518
    if-eqz v1, :cond_2

    .line 519
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    :cond_2
    move v0, v1

    .line 521
    goto :goto_0

    .line 523
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/ct;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public final setAppSearchData(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->M:Landroid/os/Bundle;

    .line 461
    return-void
.end method

.method public final setIconified(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 702
    if-eqz p1, :cond_3

    .line 6252
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 6253
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6254
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->z:Z

    if-eqz v0, :cond_1

    .line 6256
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->v:Landroid/support/v7/widget/fi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->v:Landroid/support/v7/widget/fi;

    invoke-interface {v0}, Landroid/support/v7/widget/fi;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6258
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 6260
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SearchView;->a(Z)V

    :cond_1
    :goto_0
    return-void

    .line 6264
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 6265
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 6266
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    goto :goto_0

    .line 6272
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 6273
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 6274
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 6275
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->y:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 6276
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->y:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final setIconifiedByDefault(Z)V
    .locals 1

    .prologue
    .line 675
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->z:Z

    if-ne v0, p1, :cond_0

    .line 679
    :goto_0
    return-void

    .line 676
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->z:Z

    .line 677
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 678
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->g()V

    goto :goto_0
.end method

.method public final setImeOptions(I)V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 473
    return-void
.end method

.method public final setInputType(I)V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 496
    return-void
.end method

.method public final setMaxWidth(I)V
    .locals 0

    .prologue
    .line 797
    iput p1, p0, Landroid/support/v7/widget/SearchView;->G:I

    .line 799
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->requestLayout()V

    .line 800
    return-void
.end method

.method public final setOnCloseListener(Landroid/support/v7/widget/fi;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->v:Landroid/support/v7/widget/fi;

    .line 554
    return-void
.end method

.method public final setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->w:Landroid/view/View$OnFocusChangeListener;

    .line 563
    return-void
.end method

.method public final setOnQueryTextListener(Landroid/support/v7/widget/fj;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/fj;

    .line 545
    return-void
.end method

.method public final setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->y:Landroid/view/View$OnClickListener;

    .line 584
    return-void
.end method

.method public final setOnSuggestionListener(Landroid/support/v7/widget/fk;)V
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->x:Landroid/support/v7/widget/fk;

    .line 572
    return-void
.end method

.method final setQuery(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 1552
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1554
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1555
    return-void

    .line 1554
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method public final setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 627
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->D:Ljava/lang/CharSequence;

    .line 628
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->g()V

    .line 629
    return-void
.end method

.method public final setQueryRefinementEnabled(Z)V
    .locals 2

    .prologue
    .line 756
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->E:Z

    .line 757
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->B:Landroid/support/v4/widget/CursorAdapter;

    instance-of v0, v0, Landroid/support/v7/widget/fu;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->B:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Landroid/support/v7/widget/fu;

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    .line 7118
    :goto_0
    iput v1, v0, Landroid/support/v7/widget/fu;->a:I

    .line 761
    :cond_0
    return-void

    .line 758
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/high16 v7, 0x10000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 438
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/app/SearchableInfo;

    .line 439
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_3

    .line 2156
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    .line 2157
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 2158
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    .line 2161
    and-int/lit8 v1, v0, 0xf

    if-ne v1, v2, :cond_0

    .line 2164
    const v1, -0x10001

    and-int/2addr v0, v1

    .line 2165
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2166
    or-int/2addr v0, v7

    .line 2173
    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    .line 2176
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 2177
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->B:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_1

    .line 2178
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->B:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2182
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2183
    new-instance v0, Landroid/support/v7/widget/fu;

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/app/SearchableInfo;

    iget-object v6, p0, Landroid/support/v7/widget/SearchView;->Q:Ljava/util/WeakHashMap;

    invoke-direct {v0, v1, p0, v5, v6}, Landroid/support/v7/widget/fu;-><init>(Landroid/content/Context;Landroid/support/v7/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->B:Landroid/support/v4/widget/CursorAdapter;

    .line 2185
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->B:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2186
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->B:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Landroid/support/v7/widget/fu;

    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->E:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    .line 3118
    :goto_0
    iput v1, v0, Landroid/support/v7/widget/fu;->a:I

    .line 441
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->g()V

    .line 3924
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3926
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3927
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/content/Intent;

    .line 3931
    :goto_1
    if-eqz v0, :cond_8

    .line 3932
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 3934
    if-eqz v0, :cond_7

    .line 444
    :goto_2
    iput-boolean v2, p0, Landroid/support/v7/widget/SearchView;->H:Z

    .line 446
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->H:Z

    if-eqz v0, :cond_4

    .line 449
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, "nm"

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 4716
    :cond_4
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->A:Z

    .line 451
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 452
    return-void

    :cond_5
    move v1, v2

    .line 2186
    goto :goto_0

    .line 3928
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3929
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->s:Landroid/content/Intent;

    goto :goto_1

    :cond_7
    move v2, v3

    .line 3934
    goto :goto_2

    :cond_8
    move v2, v3

    .line 3937
    goto :goto_2

    :cond_9
    move-object v0, v4

    goto :goto_1
.end method

.method public final setSubmitButtonEnabled(Z)V
    .locals 1

    .prologue
    .line 728
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->C:Z

    .line 6716
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->A:Z

    .line 729
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 730
    return-void
.end method

.method public final setSuggestionsAdapter(Landroid/support/v4/widget/CursorAdapter;)V
    .locals 2

    .prologue
    .line 778
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->B:Landroid/support/v4/widget/CursorAdapter;

    .line 780
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->B:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 781
    return-void
.end method
