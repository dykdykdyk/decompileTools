.class public final Landroid/support/v7/view/menu/l;
.super Ljava/lang/Object;
.source "ListMenuPresenter.java"

# interfaces
.implements Landroid/support/v7/view/menu/ae;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/view/LayoutInflater;

.field c:Landroid/support/v7/view/menu/o;

.field d:Landroid/support/v7/view/menu/ExpandedMenuView;

.field e:I

.field f:I

.field public g:Landroid/support/v7/view/menu/af;

.field h:Landroid/support/v7/view/menu/m;

.field private i:I


# direct methods
.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Landroid/support/v7/view/menu/l;->f:I

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/view/menu/l;->e:I

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p2}, Landroid/support/v7/view/menu/l;-><init>(I)V

    .line 67
    iput-object p1, p0, Landroid/support/v7/view/menu/l;->a:Landroid/content/Context;

    .line 68
    iget-object v0, p0, Landroid/support/v7/view/menu/l;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/l;->b:Landroid/view/LayoutInflater;

    .line 69
    return-void
.end method

.method static synthetic a(Landroid/support/v7/view/menu/l;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Landroid/support/v7/view/menu/l;->i:I

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/ag;
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Landroid/support/v7/view/menu/l;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Landroid/support/v7/view/menu/l;->b:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_expanded_menu_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/ExpandedMenuView;

    iput-object v0, p0, Landroid/support/v7/view/menu/l;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    .line 103
    iget-object v0, p0, Landroid/support/v7/view/menu/l;->h:Landroid/support/v7/view/menu/m;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Landroid/support/v7/view/menu/m;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/m;-><init>(Landroid/support/v7/view/menu/l;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/l;->h:Landroid/support/v7/view/menu/m;

    .line 106
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/l;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    iget-object v1, p0, Landroid/support/v7/view/menu/l;->h:Landroid/support/v7/view/menu/m;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/ExpandedMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    iget-object v0, p0, Landroid/support/v7/view/menu/l;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 109
    :cond_1
    iget-object v0, p0, Landroid/support/v7/view/menu/l;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/support/v7/view/menu/o;)V
    .locals 2

    .prologue
    .line 83
    iget v0, p0, Landroid/support/v7/view/menu/l;->e:I

    if-eqz v0, :cond_2

    .line 84
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Landroid/support/v7/view/menu/l;->e:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/view/menu/l;->a:Landroid/content/Context;

    .line 85
    iget-object v0, p0, Landroid/support/v7/view/menu/l;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/l;->b:Landroid/view/LayoutInflater;

    .line 92
    :cond_0
    :goto_0
    iput-object p2, p0, Landroid/support/v7/view/menu/l;->c:Landroid/support/v7/view/menu/o;

    .line 93
    iget-object v0, p0, Landroid/support/v7/view/menu/l;->h:Landroid/support/v7/view/menu/m;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Landroid/support/v7/view/menu/l;->h:Landroid/support/v7/view/menu/m;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/m;->notifyDataSetChanged()V

    .line 96
    :cond_1
    return-void

    .line 86
    :cond_2
    iget-object v0, p0, Landroid/support/v7/view/menu/l;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 87
    iput-object p1, p0, Landroid/support/v7/view/menu/l;->a:Landroid/content/Context;

    .line 88
    iget-object v0, p0, Landroid/support/v7/view/menu/l;->b:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Landroid/support/v7/view/menu/l;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/l;->b:Landroid/view/LayoutInflater;

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/view/menu/af;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Landroid/support/v7/view/menu/l;->g:Landroid/support/v7/view/menu/af;

    .line 134
    return-void
.end method

.method public final a(Landroid/support/v7/view/menu/o;Z)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/v7/view/menu/l;->g:Landroid/support/v7/view/menu/af;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Landroid/support/v7/view/menu/l;->g:Landroid/support/v7/view/menu/af;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/af;->a(Landroid/support/v7/view/menu/o;Z)V

    .line 153
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Landroid/support/v7/view/menu/l;->h:Landroid/support/v7/view/menu/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/l;->h:Landroid/support/v7/view/menu/m;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/m;->notifyDataSetChanged()V

    .line 129
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/support/v7/view/menu/an;)Z
    .locals 6

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/support/v7/view/menu/an;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 145
    :goto_0
    return v0

    .line 141
    :cond_0
    new-instance v0, Landroid/support/v7/view/menu/r;

    invoke-direct {v0, p1}, Landroid/support/v7/view/menu/r;-><init>(Landroid/support/v7/view/menu/o;)V

    .line 2052
    iget-object v1, v0, Landroid/support/v7/view/menu/r;->a:Landroid/support/v7/view/menu/o;

    .line 2055
    new-instance v2, Landroid/support/v7/a/r;

    .line 2806
    iget-object v3, v1, Landroid/support/v7/view/menu/o;->a:Landroid/content/Context;

    .line 2055
    invoke-direct {v2, v3}, Landroid/support/v7/a/r;-><init>(Landroid/content/Context;)V

    .line 2057
    new-instance v3, Landroid/support/v7/view/menu/l;

    .line 3336
    iget-object v4, v2, Landroid/support/v7/a/r;->a:Landroid/support/v7/a/j;

    iget-object v4, v4, Landroid/support/v7/a/j;->a:Landroid/content/Context;

    .line 2057
    sget v5, Landroid/support/v7/appcompat/R$layout;->abc_list_menu_item_layout:I

    invoke-direct {v3, v4, v5}, Landroid/support/v7/view/menu/l;-><init>(Landroid/content/Context;I)V

    iput-object v3, v0, Landroid/support/v7/view/menu/r;->c:Landroid/support/v7/view/menu/l;

    .line 2060
    iget-object v3, v0, Landroid/support/v7/view/menu/r;->c:Landroid/support/v7/view/menu/l;

    .line 4133
    iput-object v0, v3, Landroid/support/v7/view/menu/l;->g:Landroid/support/v7/view/menu/af;

    .line 2061
    iget-object v3, v0, Landroid/support/v7/view/menu/r;->a:Landroid/support/v7/view/menu/o;

    iget-object v4, v0, Landroid/support/v7/view/menu/r;->c:Landroid/support/v7/view/menu/l;

    invoke-virtual {v3, v4}, Landroid/support/v7/view/menu/o;->a(Landroid/support/v7/view/menu/ae;)V

    .line 2062
    iget-object v3, v0, Landroid/support/v7/view/menu/r;->c:Landroid/support/v7/view/menu/l;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/l;->b()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 4607
    iget-object v4, v2, Landroid/support/v7/a/r;->a:Landroid/support/v7/a/j;

    iput-object v3, v4, Landroid/support/v7/a/j;->t:Landroid/widget/ListAdapter;

    .line 4608
    iget-object v3, v2, Landroid/support/v7/a/r;->a:Landroid/support/v7/a/j;

    iput-object v0, v3, Landroid/support/v7/a/j;->u:Landroid/content/DialogInterface$OnClickListener;

    .line 5288
    iget-object v3, v1, Landroid/support/v7/view/menu/o;->h:Landroid/view/View;

    .line 2066
    if-eqz v3, :cond_2

    .line 5376
    iget-object v1, v2, Landroid/support/v7/a/r;->a:Landroid/support/v7/a/j;

    iput-object v3, v1, Landroid/support/v7/a/j;->g:Landroid/view/View;

    .line 7568
    :goto_1
    iget-object v1, v2, Landroid/support/v7/a/r;->a:Landroid/support/v7/a/j;

    iput-object v0, v1, Landroid/support/v7/a/j;->r:Landroid/content/DialogInterface$OnKeyListener;

    .line 2078
    invoke-virtual {v2}, Landroid/support/v7/a/r;->a()Landroid/support/v7/a/q;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/view/menu/r;->b:Landroid/support/v7/a/q;

    .line 2079
    iget-object v1, v0, Landroid/support/v7/view/menu/r;->b:Landroid/support/v7/a/q;

    invoke-virtual {v1, v0}, Landroid/support/v7/a/q;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2081
    iget-object v1, v0, Landroid/support/v7/view/menu/r;->b:Landroid/support/v7/a/q;

    invoke-virtual {v1}, Landroid/support/v7/a/q;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2082
    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2086
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2088
    iget-object v0, v0, Landroid/support/v7/view/menu/r;->b:Landroid/support/v7/a/q;

    invoke-virtual {v0}, Landroid/support/v7/a/q;->show()V

    .line 142
    iget-object v0, p0, Landroid/support/v7/view/menu/l;->g:Landroid/support/v7/view/menu/af;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Landroid/support/v7/view/menu/l;->g:Landroid/support/v7/view/menu/af;

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/af;->a(Landroid/support/v7/view/menu/o;)Z

    .line 145
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 6284
    :cond_2
    iget-object v3, v1, Landroid/support/v7/view/menu/o;->g:Landroid/graphics/drawable/Drawable;

    .line 6423
    iget-object v4, v2, Landroid/support/v7/a/r;->a:Landroid/support/v7/a/j;

    iput-object v3, v4, Landroid/support/v7/a/j;->d:Landroid/graphics/drawable/Drawable;

    .line 7280
    iget-object v1, v1, Landroid/support/v7/view/menu/o;->f:Ljava/lang/CharSequence;

    .line 7355
    iget-object v3, v2, Landroid/support/v7/a/r;->a:Landroid/support/v7/a/j;

    iput-object v1, v3, Landroid/support/v7/a/j;->f:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method public final b()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroid/support/v7/view/menu/l;->h:Landroid/support/v7/view/menu/m;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Landroid/support/v7/view/menu/m;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/m;-><init>(Landroid/support/v7/view/menu/l;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/l;->h:Landroid/support/v7/view/menu/m;

    .line 123
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/l;->h:Landroid/support/v7/view/menu/m;

    return-object v0
.end method

.method public final b(Landroid/support/v7/view/menu/s;)Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public final c(Landroid/support/v7/view/menu/s;)Z
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Landroid/support/v7/view/menu/l;->c:Landroid/support/v7/view/menu/o;

    iget-object v1, p0, Landroid/support/v7/view/menu/l;->h:Landroid/support/v7/view/menu/m;

    invoke-virtual {v1, p3}, Landroid/support/v7/view/menu/m;->a(I)Landroid/support/v7/view/menu/s;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/support/v7/view/menu/o;->a(Landroid/view/MenuItem;Landroid/support/v7/view/menu/ae;I)Z

    .line 169
    return-void
.end method
