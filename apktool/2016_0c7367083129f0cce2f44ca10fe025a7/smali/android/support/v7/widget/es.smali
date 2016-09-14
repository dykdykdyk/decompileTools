.class public abstract Landroid/support/v7/widget/es;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# instance fields
.field a:I

.field b:Z

.field c:Z

.field d:Landroid/view/View;

.field private e:Landroid/support/v7/widget/RecyclerView;

.field private f:Landroid/support/v7/widget/eg;

.field private final g:Landroid/support/v7/widget/et;


# direct methods
.method static synthetic a(Landroid/support/v7/widget/es;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 10002
    .line 12114
    iget-object v2, p0, Landroid/support/v7/widget/es;->e:Landroid/support/v7/widget/RecyclerView;

    .line 12115
    iget-boolean v3, p0, Landroid/support/v7/widget/es;->c:Z

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/support/v7/widget/es;->a:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    if-nez v2, :cond_1

    .line 12116
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/es;->a()V

    .line 12118
    :cond_1
    iput-boolean v0, p0, Landroid/support/v7/widget/es;->b:Z

    .line 12119
    iget-object v3, p0, Landroid/support/v7/widget/es;->d:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 12121
    iget-object v3, p0, Landroid/support/v7/widget/es;->d:Landroid/view/View;

    .line 12150
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)I

    move-result v3

    .line 12121
    iget v4, p0, Landroid/support/v7/widget/es;->a:I

    if-ne v3, v4, :cond_5

    .line 12122
    iget-object v3, v2, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 12123
    iget-object v3, p0, Landroid/support/v7/widget/es;->g:Landroid/support/v7/widget/et;

    invoke-static {v3, v2}, Landroid/support/v7/widget/et;->a(Landroid/support/v7/widget/et;Landroid/support/v7/widget/RecyclerView;)V

    .line 12124
    invoke-virtual {p0}, Landroid/support/v7/widget/es;->a()V

    .line 12130
    :cond_2
    :goto_0
    iget-boolean v3, p0, Landroid/support/v7/widget/es;->c:Z

    if-eqz v3, :cond_4

    .line 12131
    iget-object v3, v2, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 12132
    iget-object v3, p0, Landroid/support/v7/widget/es;->g:Landroid/support/v7/widget/et;

    .line 12306
    iget v3, v3, Landroid/support/v7/widget/et;->a:I

    if-ltz v3, :cond_3

    move v0, v1

    .line 12133
    :cond_3
    iget-object v3, p0, Landroid/support/v7/widget/es;->g:Landroid/support/v7/widget/et;

    invoke-static {v3, v2}, Landroid/support/v7/widget/et;->a(Landroid/support/v7/widget/et;Landroid/support/v7/widget/RecyclerView;)V

    .line 12134
    if-eqz v0, :cond_4

    .line 12136
    iget-boolean v0, p0, Landroid/support/v7/widget/es;->c:Z

    if-eqz v0, :cond_6

    .line 12137
    iput-boolean v1, p0, Landroid/support/v7/widget/es;->b:Z

    .line 12138
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->x(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ew;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ew;->a()V

    :cond_4
    :goto_1
    return-void

    .line 12126
    :cond_5
    const-string v3, "RecyclerView"

    const-string v4, "Passed over target position while smooth scrolling."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12127
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/support/v7/widget/es;->d:Landroid/view/View;

    goto :goto_0

    .line 12140
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/es;->a()V

    goto :goto_1
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 10068
    iget-boolean v0, p0, Landroid/support/v7/widget/es;->c:Z

    if-nez v0, :cond_0

    .line 10082
    :goto_0
    return-void

    .line 10072
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/es;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 11547
    iput v2, v0, Landroid/support/v7/widget/eu;->a:I

    .line 10073
    iput-object v1, p0, Landroid/support/v7/widget/es;->d:Landroid/view/View;

    .line 10074
    iput v2, p0, Landroid/support/v7/widget/es;->a:I

    .line 10075
    iput-boolean v3, p0, Landroid/support/v7/widget/es;->b:Z

    .line 10076
    iput-boolean v3, p0, Landroid/support/v7/widget/es;->c:Z

    .line 10078
    iget-object v0, p0, Landroid/support/v7/widget/es;->f:Landroid/support/v7/widget/eg;

    invoke-static {v0, p0}, Landroid/support/v7/widget/eg;->a(Landroid/support/v7/widget/eg;Landroid/support/v7/widget/es;)V

    .line 10080
    iput-object v1, p0, Landroid/support/v7/widget/es;->f:Landroid/support/v7/widget/eg;

    .line 10081
    iput-object v1, p0, Landroid/support/v7/widget/es;->e:Landroid/support/v7/widget/RecyclerView;

    goto :goto_0
.end method
