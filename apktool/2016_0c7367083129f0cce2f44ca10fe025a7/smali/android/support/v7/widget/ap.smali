.class public final Landroid/support/v7/widget/ap;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"


# static fields
.field private static final c:Landroid/graphics/PorterDuff$Mode;

.field private static d:Landroid/support/v7/widget/ap;

.field private static final e:Landroid/support/v7/widget/ar;

.field private static final f:[I

.field private static final g:[I

.field private static final h:[I

.field private static final i:[I

.field private static final j:[I

.field private static final k:[I


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private l:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private m:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v7/widget/as;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/util/TypedValue;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/support/v7/widget/ap;->c:Landroid/graphics/PorterDuff$Mode;

    .line 100
    new-instance v0, Landroid/support/v7/widget/ar;

    invoke-direct {v0}, Landroid/support/v7/widget/ar;-><init>()V

    sput-object v0, Landroid/support/v7/widget/ap;->e:Landroid/support/v7/widget/ar;

    .line 106
    new-array v0, v6, [I

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_default_mtrl_alpha:I

    aput v1, v0, v3

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_default_mtrl_alpha:I

    aput v1, v0, v4

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ab_share_pack_mtrl_alpha:I

    aput v1, v0, v5

    sput-object v0, Landroid/support/v7/widget/ap;->f:[I

    .line 116
    const/4 v0, 0x7

    new-array v0, v0, [I

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ic_commit_search_api_mtrl_alpha:I

    aput v1, v0, v3

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_seekbar_tick_mark_material:I

    aput v1, v0, v4

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_share_mtrl_alpha:I

    aput v1, v0, v5

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_copy_mtrl_am_alpha:I

    aput v1, v0, v6

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_cut_mtrl_alpha:I

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_selectall_mtrl_alpha:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_paste_mtrl_am_alpha:I

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/ap;->g:[I

    .line 130
    const/4 v0, 0x7

    new-array v0, v0, [I

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_activated_mtrl_alpha:I

    aput v1, v0, v3

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_activated_mtrl_alpha:I

    aput v1, v0, v4

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    aput v1, v0, v5

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_text_cursor_material:I

    aput v1, v0, v6

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_text_select_handle_left_mtrl_alpha:I

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_text_select_handle_middle_mtrl_alpha:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_text_select_handle_right_mtrl_alpha:I

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/ap;->h:[I

    .line 144
    new-array v0, v6, [I

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_popup_background_mtrl_mult:I

    aput v1, v0, v3

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_internal_bg:I

    aput v1, v0, v4

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_menu_hardkey_panel_mtrl_mult:I

    aput v1, v0, v5

    sput-object v0, Landroid/support/v7/widget/ap;->i:[I

    .line 154
    new-array v0, v5, [I

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_tab_indicator_material:I

    aput v1, v0, v3

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_material:I

    aput v1, v0, v4

    sput-object v0, Landroid/support/v7/widget/ap;->j:[I

    .line 164
    new-array v0, v5, [I

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_btn_check_material:I

    aput v1, v0, v3

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_btn_radio_material:I

    aput v1, v0, v4

    sput-object v0, Landroid/support/v7/widget/ap;->k:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ap;->a:Ljava/lang/Object;

    .line 174
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/ap;->b:Ljava/util/WeakHashMap;

    .line 744
    return-void
.end method

.method private static a(Landroid/util/TypedValue;)J
    .locals 4

    .prologue
    .line 219
    iget v0, p0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p0, Landroid/util/TypedValue;->data:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 3

    .prologue
    .line 691
    sget-object v0, Landroid/support/v7/widget/ap;->e:Landroid/support/v7/widget/ar;

    .line 8642
    invoke-static {p0, p1}, Landroid/support/v7/widget/ar;->a(ILandroid/graphics/PorterDuff$Mode;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ar;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PorterDuffColorFilter;

    .line 693
    if-nez v0, :cond_0

    .line 695
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 696
    sget-object v1, Landroid/support/v7/widget/ap;->e:Landroid/support/v7/widget/ar;

    .line 8646
    invoke-static {p0, p1}, Landroid/support/v7/widget/ar;->a(ILandroid/graphics/PorterDuff$Mode;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/ar;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    :cond_0
    return-object v0
.end method

.method private a(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 386
    iget-object v3, p0, Landroid/support/v7/widget/ap;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 387
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/widget/ap;->b:Ljava/util/WeakHashMap;

    .line 388
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/LongSparseArray;

    .line 389
    if-nez v0, :cond_0

    .line 390
    monitor-exit v3

    move-object v0, v2

    .line 405
    :goto_0
    return-object v0

    .line 393
    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 394
    if-eqz v1, :cond_2

    .line 396
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 397
    if-eqz v1, :cond_1

    .line 398
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    monitor-exit v3

    goto :goto_0

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 401
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    .line 404
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 405
    goto :goto_0
.end method

.method public static a()Landroid/support/v7/widget/ap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 79
    sget-object v0, Landroid/support/v7/widget/ap;->d:Landroid/support/v7/widget/ap;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Landroid/support/v7/widget/ap;

    invoke-direct {v0}, Landroid/support/v7/widget/ap;-><init>()V

    .line 81
    sput-object v0, Landroid/support/v7/widget/ap;->d:Landroid/support/v7/widget/ap;

    .line 1087
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1088
    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    .line 1091
    const-string v2, "vector"

    new-instance v3, Landroid/support/v7/widget/at;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/at;-><init>(B)V

    invoke-direct {v0, v2, v3}, Landroid/support/v7/widget/ap;->a(Ljava/lang/String;Landroid/support/v7/widget/as;)V

    .line 1093
    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 1095
    const-string v1, "animated-vector"

    new-instance v2, Landroid/support/v7/widget/aq;

    invoke-direct {v2, v4}, Landroid/support/v7/widget/aq;-><init>(B)V

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/ap;->a(Ljava/lang/String;Landroid/support/v7/widget/as;)V

    .line 83
    :cond_0
    sget-object v0, Landroid/support/v7/widget/ap;->d:Landroid/support/v7/widget/ap;

    return-object v0
.end method

.method private static a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 703
    invoke-static {p0}, Landroid/support/v7/widget/ci;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 706
    :cond_0
    if-nez p2, :cond_1

    sget-object p2, Landroid/support/v7/widget/ap;->c:Landroid/graphics/PorterDuff$Mode;

    :cond_1
    invoke-static {p1, p2}, Landroid/support/v7/widget/ap;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 707
    return-void
.end method

.method static a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/fy;[I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 658
    invoke-static {p0}, Landroid/support/v7/widget/ci;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 659
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 660
    const-string v0, "AppCompatDrawableManager"

    const-string v1, "Mutated drawable is not the same instance as the input."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    iget-boolean v0, p1, Landroid/support/v7/widget/fy;->e:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Landroid/support/v7/widget/fy;->d:Z

    if-eqz v0, :cond_7

    .line 665
    :cond_2
    iget-boolean v0, p1, Landroid/support/v7/widget/fy;->e:Z

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/support/v7/widget/fy;->b:Landroid/content/res/ColorStateList;

    :goto_1
    iget-boolean v2, p1, Landroid/support/v7/widget/fy;->d:Z

    if-eqz v2, :cond_5

    iget-object v2, p1, Landroid/support/v7/widget/fy;->c:Landroid/graphics/PorterDuff$Mode;

    .line 7682
    :goto_2
    if-eqz v0, :cond_3

    if-nez v2, :cond_6

    .line 665
    :cond_3
    :goto_3
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 673
    :goto_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    .line 676
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 665
    goto :goto_1

    :cond_5
    sget-object v2, Landroid/support/v7/widget/ap;->c:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    .line 7685
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 7686
    invoke-static {v0, v2}, Landroid/support/v7/widget/ap;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    goto :goto_3

    .line 670
    :cond_7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_4
.end method

.method private a(Ljava/lang/String;Landroid/support/v7/widget/as;)V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Landroid/support/v7/widget/ap;->m:Landroid/support/v4/util/ArrayMap;

    if-nez v0, :cond_0

    .line 487
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ap;->m:Landroid/support/v4/util/ArrayMap;

    .line 489
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ap;->m:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    return-void
.end method

.method static a(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 7

    .prologue
    const v2, 0x1010031

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 439
    sget-object v5, Landroid/support/v7/widget/ap;->c:Landroid/graphics/PorterDuff$Mode;

    .line 444
    sget-object v4, Landroid/support/v7/widget/ap;->f:[I

    invoke-static {v4, p1}, Landroid/support/v7/widget/ap;->a([II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 445
    sget v2, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    move v4, v2

    move-object v6, v5

    move v5, v0

    move v2, v3

    .line 463
    :goto_0
    if-eqz v5, :cond_6

    .line 464
    invoke-static {p2}, Landroid/support/v7/widget/ci;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 468
    :cond_0
    invoke-static {p0, v4}, Landroid/support/v7/widget/fw;->a(Landroid/content/Context;I)I

    move-result v1

    .line 469
    invoke-static {v1, v6}, Landroid/support/v7/widget/ap;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 471
    if-eq v2, v3, :cond_1

    .line 472
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 482
    :cond_1
    :goto_1
    return v0

    .line 447
    :cond_2
    sget-object v4, Landroid/support/v7/widget/ap;->h:[I

    invoke-static {v4, p1}, Landroid/support/v7/widget/ap;->a([II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 448
    sget v2, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    move v4, v2

    move-object v6, v5

    move v5, v0

    move v2, v3

    .line 449
    goto :goto_0

    .line 450
    :cond_3
    sget-object v4, Landroid/support/v7/widget/ap;->i:[I

    invoke-static {v4, p1}, Landroid/support/v7/widget/ap;->a([II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 453
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move v5, v0

    move-object v6, v4

    move v4, v2

    move v2, v3

    goto :goto_0

    .line 454
    :cond_4
    sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_list_divider_mtrl_alpha:I

    if-ne p1, v4, :cond_5

    .line 455
    const v4, 0x1010030

    .line 457
    const v2, 0x42233333    # 40.8f

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move-object v6, v5

    move v5, v0

    goto :goto_0

    .line 458
    :cond_5
    sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_dialog_material_background:I

    if-ne p1, v4, :cond_7

    move v4, v2

    move-object v6, v5

    move v5, v0

    move v2, v3

    .line 460
    goto :goto_0

    :cond_6
    move v0, v1

    .line 482
    goto :goto_1

    :cond_7
    move v2, v3

    move v4, v1

    move-object v6, v5

    move v5, v1

    goto :goto_0
.end method

.method private a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    .locals 4

    .prologue
    .line 410
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 411
    if-eqz v1, :cond_1

    .line 412
    iget-object v2, p0, Landroid/support/v7/widget/ap;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 413
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/widget/ap;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/LongSparseArray;

    .line 414
    if-nez v0, :cond_0

    .line 415
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    .line 416
    iget-object v3, p0, Landroid/support/v7/widget/ap;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    :cond_0
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p3, v3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 419
    monitor-exit v2

    .line 420
    const/4 v0, 0x1

    .line 422
    :goto_0
    return v0

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 422
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a([II)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 499
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p0, v1

    .line 500
    if-ne v3, p1, :cond_1

    .line 501
    const/4 v0, 0x1

    .line 504
    :cond_0
    return v0

    .line 499
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 9

    .prologue
    const/4 v0, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 605
    new-array v1, v0, [[I

    .line 606
    new-array v2, v0, [I

    .line 609
    sget v0, Landroid/support/v7/appcompat/R$attr;->colorControlHighlight:I

    invoke-static {p0, v0}, Landroid/support/v7/widget/fw;->a(Landroid/content/Context;I)I

    move-result v3

    .line 610
    sget v0, Landroid/support/v7/appcompat/R$attr;->colorButtonNormal:I

    invoke-static {p0, v0}, Landroid/support/v7/widget/fw;->c(Landroid/content/Context;I)I

    move-result v0

    .line 613
    sget-object v4, Landroid/support/v7/widget/fw;->a:[I

    aput-object v4, v1, v5

    .line 614
    if-nez p2, :cond_0

    :goto_0
    aput v0, v2, v5

    .line 617
    sget-object v0, Landroid/support/v7/widget/fw;->d:[I

    aput-object v0, v1, v6

    .line 618
    if-nez p2, :cond_1

    move v0, p1

    :goto_1
    invoke-static {v3, v0}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v0

    aput v0, v2, v6

    .line 622
    sget-object v0, Landroid/support/v7/widget/fw;->b:[I

    aput-object v0, v1, v7

    .line 623
    if-nez p2, :cond_2

    move v0, p1

    :goto_2
    invoke-static {v3, v0}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v0

    aput v0, v2, v7

    .line 628
    sget-object v0, Landroid/support/v7/widget/fw;->h:[I

    aput-object v0, v1, v8

    .line 629
    if-nez p2, :cond_3

    :goto_3
    aput p1, v2, v8

    .line 632
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0

    .line 614
    :cond_0
    aget-object v0, v1, v5

    invoke-virtual {p2, v0, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    goto :goto_0

    .line 618
    :cond_1
    aget-object v0, v1, v6

    .line 619
    invoke-virtual {p2, v0, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    goto :goto_1

    .line 623
    :cond_2
    aget-object v0, v1, v7

    .line 624
    invoke-virtual {p2, v0, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    goto :goto_2

    .line 629
    :cond_3
    aget-object v0, v1, v8

    invoke-virtual {p2, v0, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    goto :goto_3
.end method


# virtual methods
.method final a(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 525
    if-nez p3, :cond_4

    const/4 v0, 0x1

    move v2, v0

    .line 528
    :goto_0
    if-eqz v2, :cond_7

    .line 6565
    iget-object v0, p0, Landroid/support/v7/widget/ap;->l:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_6

    .line 6566
    iget-object v0, p0, Landroid/support/v7/widget/ap;->l:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 6567
    if-eqz v0, :cond_5

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    .line 530
    :goto_1
    if-nez v0, :cond_3

    .line 532
    sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_edit_text_material:I

    if-ne p2, v4, :cond_8

    .line 533
    sget v0, Landroid/support/v7/appcompat/R$color;->abc_tint_edittext:I

    invoke-static {p1, v0}, Landroid/support/v7/b/a/b;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 557
    :goto_2
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 7574
    iget-object v0, p0, Landroid/support/v7/widget/ap;->l:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    .line 7575
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ap;->l:Ljava/util/WeakHashMap;

    .line 7577
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ap;->l:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 7578
    if-nez v0, :cond_1

    .line 7579
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7580
    iget-object v2, p0, Landroid/support/v7/widget/ap;->l:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7582
    :cond_1
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_2
    move-object v0, v1

    .line 561
    :cond_3
    return-object v0

    :cond_4
    move v2, v3

    .line 525
    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 6567
    goto :goto_1

    :cond_6
    move-object v0, v1

    .line 528
    goto :goto_1

    :cond_7
    move-object v0, v1

    goto :goto_1

    .line 534
    :cond_8
    sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_switch_track_mtrl_alpha:I

    if-ne p2, v4, :cond_9

    .line 535
    sget v0, Landroid/support/v7/appcompat/R$color;->abc_tint_switch_track:I

    invoke-static {p1, v0}, Landroid/support/v7/b/a/b;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_2

    .line 536
    :cond_9
    sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_switch_thumb_material:I

    if-ne p2, v4, :cond_a

    .line 537
    sget v0, Landroid/support/v7/appcompat/R$color;->abc_tint_switch_thumb:I

    invoke-static {p1, v0}, Landroid/support/v7/b/a/b;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_2

    .line 538
    :cond_a
    sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_btn_default_mtrl_shape:I

    if-ne p2, v4, :cond_b

    .line 6587
    sget v0, Landroid/support/v7/appcompat/R$attr;->colorButtonNormal:I

    .line 6588
    invoke-static {p1, v0}, Landroid/support/v7/widget/fw;->a(Landroid/content/Context;I)I

    move-result v0

    .line 6587
    invoke-static {p1, v0, p3}, Landroid/support/v7/widget/ap;->b(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_2

    .line 540
    :cond_b
    sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_btn_borderless_material:I

    if-ne p2, v4, :cond_c

    .line 6594
    invoke-static {p1, v3, v1}, Landroid/support/v7/widget/ap;->b(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_2

    .line 542
    :cond_c
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_btn_colored_material:I

    if-ne p2, v1, :cond_d

    .line 6599
    sget v0, Landroid/support/v7/appcompat/R$attr;->colorAccent:I

    .line 6600
    invoke-static {p1, v0}, Landroid/support/v7/widget/fw;->a(Landroid/content/Context;I)I

    move-result v0

    .line 6599
    invoke-static {p1, v0, p3}, Landroid/support/v7/widget/ap;->b(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_2

    .line 544
    :cond_d
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_mtrl_am_alpha:I

    if-eq p2, v1, :cond_e

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_textfield_background_material:I

    if-ne p2, v1, :cond_f

    .line 546
    :cond_e
    sget v0, Landroid/support/v7/appcompat/R$color;->abc_tint_spinner:I

    invoke-static {p1, v0}, Landroid/support/v7/b/a/b;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_2

    .line 547
    :cond_f
    sget-object v1, Landroid/support/v7/widget/ap;->g:[I

    invoke-static {v1, p2}, Landroid/support/v7/widget/ap;->a([II)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 548
    sget v0, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, v0}, Landroid/support/v7/widget/fw;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto/16 :goto_2

    .line 549
    :cond_10
    sget-object v1, Landroid/support/v7/widget/ap;->j:[I

    invoke-static {v1, p2}, Landroid/support/v7/widget/ap;->a([II)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 550
    sget v0, Landroid/support/v7/appcompat/R$color;->abc_tint_default:I

    invoke-static {p1, v0}, Landroid/support/v7/b/a/b;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto/16 :goto_2

    .line 551
    :cond_11
    sget-object v1, Landroid/support/v7/widget/ap;->k:[I

    invoke-static {v1, p2}, Landroid/support/v7/widget/ap;->a([II)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 552
    sget v0, Landroid/support/v7/appcompat/R$color;->abc_tint_btn_checkable:I

    invoke-static {p1, v0}, Landroid/support/v7/b/a/b;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto/16 :goto_2

    .line 553
    :cond_12
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_seekbar_thumb_material:I

    if-ne p2, v1, :cond_13

    .line 554
    sget v0, Landroid/support/v7/appcompat/R$color;->abc_tint_seek_thumb:I

    invoke-static {p1, v0}, Landroid/support/v7/b/a/b;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto/16 :goto_2

    :cond_13
    move-object v1, v0

    goto/16 :goto_2
.end method

.method final a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 301
    iget-object v0, p0, Landroid/support/v7/widget/ap;->m:Landroid/support/v4/util/ArrayMap;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/widget/ap;->m:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 302
    iget-object v0, p0, Landroid/support/v7/widget/ap;->n:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Landroid/support/v7/widget/ap;->n:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 304
    const-string v2, "appcompat_skip_skip"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_3

    iget-object v2, p0, Landroid/support/v7/widget/ap;->m:Landroid/support/v4/util/ArrayMap;

    .line 305
    invoke-virtual {v2, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_0
    move-object v0, v1

    .line 382
    :cond_1
    :goto_0
    return-object v0

    .line 316
    :cond_2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ap;->n:Landroid/util/SparseArray;

    .line 319
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/ap;->o:Landroid/util/TypedValue;

    if-nez v0, :cond_4

    .line 320
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ap;->o:Landroid/util/TypedValue;

    .line 322
    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/ap;->o:Landroid/util/TypedValue;

    .line 323
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 324
    invoke-virtual {v0, p2, v2, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 326
    invoke-static {v2}, Landroid/support/v7/widget/ap;->a(Landroid/util/TypedValue;)J

    move-result-wide v4

    .line 328
    invoke-direct {p0, p1, v4, v5}, Landroid/support/v7/widget/ap;->a(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 329
    if-eqz v1, :cond_5

    move-object v0, v1

    .line 335
    goto :goto_0

    .line 338
    :cond_5
    iget-object v3, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v3, :cond_8

    iget-object v3, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, ".xml"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 341
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 342
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 344
    :cond_6
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v8, :cond_7

    if-ne v0, v7, :cond_6

    .line 348
    :cond_7
    if-eq v0, v8, :cond_9

    .line 349
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :catch_0
    move-exception v0

    .line 371
    const-string v2, "AppCompatDrawableManager"

    const-string v3, "Exception while inflating drawable"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    move-object v0, v1

    .line 374
    :goto_1
    if-nez v0, :cond_1

    .line 377
    iget-object v1, p0, Landroid/support/v7/widget/ap;->n:Landroid/util/SparseArray;

    const-string v2, "appcompat_skip_skip"

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    .line 352
    :cond_9
    :try_start_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 354
    iget-object v7, p0, Landroid/support/v7/widget/ap;->n:Landroid/util/SparseArray;

    invoke-virtual {v7, p2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 357
    iget-object v7, p0, Landroid/support/v7/widget/ap;->m:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/as;

    .line 358
    if-eqz v0, :cond_a

    .line 360
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    .line 359
    invoke-interface {v0, p1, v3, v6, v7}, Landroid/support/v7/widget/as;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 362
    :cond_a
    if-eqz v1, :cond_b

    .line 364
    iget v0, v2, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 365
    invoke-direct {p0, p1, v4, v5, v1}, Landroid/support/v7/widget/ap;->a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_b
    move-object v0, v1

    .line 372
    goto :goto_1

    :cond_c
    move-object v0, v1

    .line 382
    goto/16 :goto_0
.end method

.method public final a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 187
    .line 1710
    iget-boolean v0, p0, Landroid/support/v7/widget/ap;->p:Z

    if-nez v0, :cond_3

    .line 1716
    iput-boolean v2, p0, Landroid/support/v7/widget/ap;->p:Z

    .line 1717
    sget v0, Landroid/support/v7/appcompat/R$drawable;->abc_vector_test:I

    .line 2182
    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v7/widget/ap;->a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1718
    if-eqz v0, :cond_1

    .line 2726
    instance-of v3, v0, Landroid/support/a/a/k;

    if-nez v3, :cond_0

    const-string v3, "android.graphics.drawable.VectorDrawable"

    .line 2727
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    .line 1718
    :goto_0
    if-nez v0, :cond_3

    .line 1719
    :cond_1
    iput-boolean v1, p0, Landroid/support/v7/widget/ap;->p:Z

    .line 1720
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v0, v1

    .line 2727
    goto :goto_0

    .line 189
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/ap;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 190
    if-nez v0, :cond_6

    .line 3224
    iget-object v0, p0, Landroid/support/v7/widget/ap;->o:Landroid/util/TypedValue;

    if-nez v0, :cond_4

    .line 3225
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ap;->o:Landroid/util/TypedValue;

    .line 3227
    :cond_4
    iget-object v3, p0, Landroid/support/v7/widget/ap;->o:Landroid/util/TypedValue;

    .line 3228
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2, v3, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 3229
    invoke-static {v3}, Landroid/support/v7/widget/ap;->a(Landroid/util/TypedValue;)J

    move-result-wide v4

    .line 3231
    invoke-direct {p0, p1, v4, v5}, Landroid/support/v7/widget/ap;->a(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3232
    if-nez v0, :cond_6

    .line 3238
    sget v6, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_material:I

    if-ne p2, v6, :cond_5

    .line 3239
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_internal_bg:I

    .line 4182
    invoke-virtual {p0, p1, v7, v1}, Landroid/support/v7/widget/ap;->a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 3240
    aput-object v7, v6, v1

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    .line 5182
    invoke-virtual {p0, p1, v7, v1}, Landroid/support/v7/widget/ap;->a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3241
    aput-object v1, v6, v2

    invoke-direct {v0, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 3245
    :cond_5
    if-eqz v0, :cond_6

    .line 3246
    iget v1, v3, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 3248
    invoke-direct {p0, p1, v4, v5, v0}, Landroid/support/v7/widget/ap;->a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    .line 193
    :cond_6
    if-nez v0, :cond_7

    .line 194
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 197
    :cond_7
    if-eqz v0, :cond_8

    .line 199
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/ap;->a(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 201
    :cond_8
    if-eqz v0, :cond_9

    .line 203
    invoke-static {v0}, Landroid/support/v7/widget/ci;->a(Landroid/graphics/drawable/Drawable;)V

    .line 205
    :cond_9
    return-object v0
.end method

.method final a(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const v5, 0x102000f

    const v4, 0x102000d

    const/high16 v2, 0x1020000

    const/4 v0, 0x0

    .line 256
    .line 5518
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/ap;->a(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 257
    if-eqz v1, :cond_3

    .line 259
    invoke-static {p4}, Landroid/support/v7/widget/ci;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 262
    :cond_0
    invoke-static {p4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 263
    invoke-static {p4, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 6510
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_switch_thumb_material:I

    if-ne p2, v1, :cond_1

    .line 6511
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 267
    :cond_1
    if-eqz v0, :cond_2

    .line 268
    invoke-static {p4, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 297
    :cond_2
    :goto_0
    return-object p4

    .line 270
    :cond_3
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_seekbar_track_material:I

    if-ne p2, v1, :cond_4

    move-object v0, p4

    .line 271
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 272
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    .line 273
    invoke-static {p1, v2}, Landroid/support/v7/widget/fw;->a(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/support/v7/widget/ap;->c:Landroid/graphics/PorterDuff$Mode;

    .line 272
    invoke-static {v1, v2, v3}, Landroid/support/v7/widget/ap;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 274
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    .line 275
    invoke-static {p1, v2}, Landroid/support/v7/widget/fw;->a(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/support/v7/widget/ap;->c:Landroid/graphics/PorterDuff$Mode;

    .line 274
    invoke-static {v1, v2, v3}, Landroid/support/v7/widget/ap;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 276
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    .line 277
    invoke-static {p1, v1}, Landroid/support/v7/widget/fw;->a(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/support/v7/widget/ap;->c:Landroid/graphics/PorterDuff$Mode;

    .line 276
    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/ap;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 278
    :cond_4
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ratingbar_material:I

    if-eq p2, v1, :cond_5

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ratingbar_indicator_material:I

    if-eq p2, v1, :cond_5

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ratingbar_small_material:I

    if-ne p2, v1, :cond_6

    :cond_5
    move-object v0, p4

    .line 281
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 282
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    .line 283
    invoke-static {p1, v2}, Landroid/support/v7/widget/fw;->c(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/support/v7/widget/ap;->c:Landroid/graphics/PorterDuff$Mode;

    .line 282
    invoke-static {v1, v2, v3}, Landroid/support/v7/widget/ap;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 285
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    .line 286
    invoke-static {p1, v2}, Landroid/support/v7/widget/fw;->a(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/support/v7/widget/ap;->c:Landroid/graphics/PorterDuff$Mode;

    .line 285
    invoke-static {v1, v2, v3}, Landroid/support/v7/widget/ap;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 287
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    .line 288
    invoke-static {p1, v1}, Landroid/support/v7/widget/fw;->a(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/support/v7/widget/ap;->c:Landroid/graphics/PorterDuff$Mode;

    .line 287
    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/ap;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 290
    :cond_6
    invoke-static {p1, p2, p4}, Landroid/support/v7/widget/ap;->a(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result v1

    .line 291
    if-nez v1, :cond_2

    if-eqz p3, :cond_2

    move-object p4, v0

    .line 294
    goto :goto_0
.end method
