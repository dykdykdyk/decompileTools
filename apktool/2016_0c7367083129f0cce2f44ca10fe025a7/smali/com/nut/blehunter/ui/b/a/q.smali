.class final Lcom/nut/blehunter/ui/b/a/q;
.super Ljava/lang/Object;
.source "MapChooseDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/b/a/o;

.field final synthetic b:Lcom/nut/blehunter/ui/b/a/p;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/b/a/p;Lcom/nut/blehunter/ui/b/a/o;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/a/q;->b:Lcom/nut/blehunter/ui/b/a/p;

    iput-object p2, p0, Lcom/nut/blehunter/ui/b/a/q;->a:Lcom/nut/blehunter/ui/b/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 162
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/q;->b:Lcom/nut/blehunter/ui/b/a/p;

    iget-object v0, v0, Lcom/nut/blehunter/ui/b/a/p;->n:Lcom/nut/blehunter/ui/b/a/o;

    iget-object v1, v0, Lcom/nut/blehunter/ui/b/a/o;->d:Lcom/nut/blehunter/ui/b/a/n;

    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/q;->b:Lcom/nut/blehunter/ui/b/a/p;

    iget-object v0, v0, Lcom/nut/blehunter/ui/b/a/p;->n:Lcom/nut/blehunter/ui/b/a/o;

    .line 1120
    iget-object v2, v0, Lcom/nut/blehunter/ui/b/a/o;->c:Landroid/content/Context;

    .line 162
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/q;->b:Lcom/nut/blehunter/ui/b/a/p;

    iget-object v0, v0, Lcom/nut/blehunter/ui/b/a/p;->n:Lcom/nut/blehunter/ui/b/a/o;

    iget-object v0, v0, Lcom/nut/blehunter/ui/b/a/o;->d:Lcom/nut/blehunter/ui/b/a/n;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/n;->a(Lcom/nut/blehunter/ui/b/a/n;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/nut/blehunter/ui/b/a/q;->b:Lcom/nut/blehunter/ui/b/a/p;

    invoke-virtual {v3}, Lcom/nut/blehunter/ui/b/a/p;->d()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Lcom/nut/blehunter/ui/b/a/q;->b:Lcom/nut/blehunter/ui/b/a/p;

    iget-object v3, v3, Lcom/nut/blehunter/ui/b/a/p;->n:Lcom/nut/blehunter/ui/b/a/o;

    iget-object v3, v3, Lcom/nut/blehunter/ui/b/a/o;->d:Lcom/nut/blehunter/ui/b/a/n;

    invoke-static {v3}, Lcom/nut/blehunter/ui/b/a/n;->b(Lcom/nut/blehunter/ui/b/a/n;)Lcom/nut/blehunter/entity/CustomMarker;

    move-result-object v3

    .line 2101
    if-eqz v0, :cond_0

    if-nez v3, :cond_1

    .line 163
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/q;->b:Lcom/nut/blehunter/ui/b/a/p;

    iget-object v0, v0, Lcom/nut/blehunter/ui/b/a/p;->n:Lcom/nut/blehunter/ui/b/a/o;

    iget-object v0, v0, Lcom/nut/blehunter/ui/b/a/o;->d:Lcom/nut/blehunter/ui/b/a/n;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/a/n;->dismissAllowingStateLoss()V

    .line 164
    return-void

    .line 2104
    :cond_1
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2105
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 2106
    if-eqz v2, :cond_0

    .line 2107
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    iget-object v6, v1, Lcom/nut/blehunter/ui/b/a/n;->a:Ljava/lang/String;

    new-array v7, v13, [Ljava/lang/Object;

    iget-wide v8, v3, Lcom/nut/blehunter/entity/CustomMarker;->g:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v10

    iget-wide v8, v3, Lcom/nut/blehunter/entity/CustomMarker;->h:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v11

    iget-object v8, v3, Lcom/nut/blehunter/entity/CustomMarker;->c:Ljava/lang/String;

    aput-object v8, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2108
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2109
    const-string v5, "autonavi"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2111
    iget-wide v4, v3, Lcom/nut/blehunter/entity/CustomMarker;->g:D

    iget-wide v6, v3, Lcom/nut/blehunter/entity/CustomMarker;->h:D

    invoke-static {v4, v5, v6, v7}, Lcom/nut/blehunter/d/f;->a(DD)[D

    move-result-object v0

    .line 2112
    iget-object v4, v1, Lcom/nut/blehunter/ui/b/a/n;->a:Ljava/lang/String;

    new-array v5, v13, [Ljava/lang/Object;

    aget-wide v6, v0, v10

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v10

    aget-wide v6, v0, v11

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v5, v11

    iget-object v0, v3, Lcom/nut/blehunter/entity/CustomMarker;->c:Ljava/lang/String;

    aput-object v0, v5, v12

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2116
    :goto_1
    invoke-virtual {v1, v2}, Lcom/nut/blehunter/ui/b/a/n;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2114
    :cond_2
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1
.end method
