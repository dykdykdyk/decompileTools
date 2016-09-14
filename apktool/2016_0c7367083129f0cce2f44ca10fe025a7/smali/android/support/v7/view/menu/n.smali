.class public final Landroid/support/v7/view/menu/n;
.super Landroid/widget/BaseAdapter;
.source "MenuAdapter.java"


# static fields
.field static final a:I


# instance fields
.field public b:Landroid/support/v7/view/menu/o;

.field c:Z

.field private d:I

.field private final e:Z

.field private final f:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget v0, Landroid/support/v7/appcompat/R$layout;->abc_popup_menu_item_layout:I

    sput v0, Landroid/support/v7/view/menu/n;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/view/menu/o;Landroid/view/LayoutInflater;Z)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/view/menu/n;->d:I

    .line 41
    iput-boolean p3, p0, Landroid/support/v7/view/menu/n;->e:Z

    .line 42
    iput-object p2, p0, Landroid/support/v7/view/menu/n;->f:Landroid/view/LayoutInflater;

    .line 43
    iput-object p1, p0, Landroid/support/v7/view/menu/n;->b:Landroid/support/v7/view/menu/o;

    .line 44
    invoke-direct {p0}, Landroid/support/v7/view/menu/n;->a()V

    .line 45
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 101
    iget-object v0, p0, Landroid/support/v7/view/menu/n;->b:Landroid/support/v7/view/menu/o;

    .line 2363
    iget-object v2, v0, Landroid/support/v7/view/menu/o;->j:Landroid/support/v7/view/menu/s;

    .line 102
    if-eqz v2, :cond_1

    .line 103
    iget-object v0, p0, Landroid/support/v7/view/menu/n;->b:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->j()Ljava/util/ArrayList;

    move-result-object v3

    .line 104
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 105
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 106
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/s;

    .line 107
    if-ne v0, v2, :cond_0

    .line 108
    iput v1, p0, Landroid/support/v7/view/menu/n;->d:I

    .line 114
    :goto_1
    return-void

    .line 105
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 113
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/view/menu/n;->d:I

    goto :goto_1
.end method


# virtual methods
.method public final a(I)Landroid/support/v7/view/menu/s;
    .locals 2

    .prologue
    .line 71
    iget-boolean v0, p0, Landroid/support/v7/view/menu/n;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/n;->b:Landroid/support/v7/view/menu/o;

    .line 72
    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->j()Ljava/util/ArrayList;

    move-result-object v0

    .line 73
    :goto_0
    iget v1, p0, Landroid/support/v7/view/menu/n;->d:I

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/support/v7/view/menu/n;->d:I

    if-lt p1, v1, :cond_0

    .line 74
    add-int/lit8 p1, p1, 0x1

    .line 76
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/s;

    return-object v0

    .line 72
    :cond_1
    iget-object v0, p0, Landroid/support/v7/view/menu/n;->b:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->h()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final getCount()I
    .locals 2

    .prologue
    .line 57
    iget-boolean v0, p0, Landroid/support/v7/view/menu/n;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/n;->b:Landroid/support/v7/view/menu/o;

    .line 58
    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->j()Ljava/util/ArrayList;

    move-result-object v0

    .line 59
    :goto_0
    iget v1, p0, Landroid/support/v7/view/menu/n;->d:I

    if-gez v1, :cond_1

    .line 60
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 62
    :goto_1
    return v0

    .line 58
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/n;->b:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->h()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/n;->a(I)Landroid/support/v7/view/menu/s;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 83
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 88
    if-nez p2, :cond_1

    .line 89
    iget-object v0, p0, Landroid/support/v7/view/menu/n;->f:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/v7/view/menu/n;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 92
    check-cast v0, Landroid/support/v7/view/menu/ah;

    .line 93
    iget-boolean v2, p0, Landroid/support/v7/view/menu/n;->c:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 94
    check-cast v2, Landroid/support/v7/view/menu/ListMenuItemView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 96
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/n;->a(I)Landroid/support/v7/view/menu/s;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/support/v7/view/menu/ah;->a(Landroid/support/v7/view/menu/s;)V

    .line 97
    return-object v1

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/support/v7/view/menu/n;->a()V

    .line 119
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 120
    return-void
.end method
