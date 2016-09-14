.class final Landroid/support/v7/widget/ae;
.super Ljava/lang/Object;
.source "ActivityChooserView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActivityChooserView;


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Landroid/support/v7/widget/ae;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/widget/ActivityChooserView;->c(Landroid/support/v7/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 593
    iget-object v0, p0, Landroid/support/v7/widget/ae;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView;->a()Z

    .line 594
    iget-object v0, p0, Landroid/support/v7/widget/ae;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/widget/ActivityChooserView;->a(Landroid/support/v7/widget/ActivityChooserView;)Landroid/support/v7/widget/ad;

    move-result-object v0

    .line 4796
    iget-object v0, v0, Landroid/support/v7/widget/ad;->a:Landroid/support/v7/widget/x;

    invoke-virtual {v0}, Landroid/support/v7/widget/x;->b()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 595
    iget-object v1, p0, Landroid/support/v7/widget/ae;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v1}, Landroid/support/v7/widget/ActivityChooserView;->a(Landroid/support/v7/widget/ActivityChooserView;)Landroid/support/v7/widget/ad;

    move-result-object v1

    .line 4815
    iget-object v1, v1, Landroid/support/v7/widget/ad;->a:Landroid/support/v7/widget/x;

    .line 595
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/x;->a(Landroid/content/pm/ResolveInfo;)I

    move-result v0

    .line 596
    iget-object v1, p0, Landroid/support/v7/widget/ae;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v1}, Landroid/support/v7/widget/ActivityChooserView;->a(Landroid/support/v7/widget/ActivityChooserView;)Landroid/support/v7/widget/ad;

    move-result-object v1

    .line 5815
    iget-object v1, v1, Landroid/support/v7/widget/ad;->a:Landroid/support/v7/widget/x;

    .line 596
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/x;->b(I)Landroid/content/Intent;

    move-result-object v0

    .line 597
    if-eqz v0, :cond_0

    .line 598
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 599
    iget-object v1, p0, Landroid/support/v7/widget/ae;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ae;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/widget/ActivityChooserView;->d(Landroid/support/v7/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 602
    iget-object v0, p0, Landroid/support/v7/widget/ae;->a:Landroid/support/v7/widget/ActivityChooserView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/ActivityChooserView;->a(Landroid/support/v7/widget/ActivityChooserView;Z)Z

    .line 603
    iget-object v0, p0, Landroid/support/v7/widget/ae;->a:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v1, p0, Landroid/support/v7/widget/ae;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v1}, Landroid/support/v7/widget/ActivityChooserView;->e(Landroid/support/v7/widget/ActivityChooserView;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/ActivityChooserView;->a(Landroid/support/v7/widget/ActivityChooserView;I)V

    goto :goto_0

    .line 605
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final onDismiss()V
    .locals 2

    .prologue
    .line 626
    .line 6633
    iget-object v0, p0, Landroid/support/v7/widget/ae;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/widget/ActivityChooserView;->f(Landroid/support/v7/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6634
    iget-object v0, p0, Landroid/support/v7/widget/ae;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/widget/ActivityChooserView;->f(Landroid/support/v7/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 627
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ae;->a:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->a:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_1

    .line 628
    iget-object v0, p0, Landroid/support/v7/widget/ae;->a:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->a:Landroid/support/v4/view/ActionProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ActionProvider;->subUiVisibilityChanged(Z)V

    .line 630
    :cond_1
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .line 560
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ad;

    .line 561
    invoke-virtual {v0, p3}, Landroid/support/v7/widget/ad;->getItemViewType(I)I

    move-result v0

    .line 562
    packed-switch v0, :pswitch_data_0

    .line 585
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 564
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/ae;->a:Landroid/support/v7/widget/ActivityChooserView;

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Landroid/support/v7/widget/ActivityChooserView;->a(Landroid/support/v7/widget/ActivityChooserView;I)V

    .line 2554
    :cond_0
    :goto_0
    return-void

    .line 567
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/ae;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView;->a()Z

    .line 568
    iget-object v0, p0, Landroid/support/v7/widget/ae;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/widget/ActivityChooserView;->b(Landroid/support/v7/widget/ActivityChooserView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 570
    if-lez p3, :cond_0

    .line 571
    iget-object v0, p0, Landroid/support/v7/widget/ae;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/widget/ActivityChooserView;->a(Landroid/support/v7/widget/ActivityChooserView;)Landroid/support/v7/widget/ad;

    move-result-object v0

    .line 1815
    iget-object v2, v0, Landroid/support/v7/widget/ad;->a:Landroid/support/v7/widget/x;

    .line 2533
    iget-object v3, v2, Landroid/support/v7/widget/x;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 2534
    :try_start_0
    invoke-virtual {v2}, Landroid/support/v7/widget/x;->c()V

    .line 2536
    iget-object v0, v2, Landroid/support/v7/widget/x;->b:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/y;

    .line 2537
    iget-object v1, v2, Landroid/support/v7/widget/x;->b:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/y;

    .line 2540
    if-eqz v1, :cond_1

    .line 2542
    iget v1, v1, Landroid/support/v7/widget/y;->b:F

    iget v4, v0, Landroid/support/v7/widget/y;->b:F

    sub-float/2addr v1, v4

    const/high16 v4, 0x40a00000    # 5.0f

    add-float/2addr v1, v4

    .line 2548
    :goto_1
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v0, Landroid/support/v7/widget/y;->a:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/support/v7/widget/y;->a:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2551
    new-instance v0, Landroid/support/v7/widget/aa;

    .line 2552
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v0, v4, v6, v7, v1}, Landroid/support/v7/widget/aa;-><init>(Landroid/content/ComponentName;JF)V

    .line 2553
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/x;->a(Landroid/support/v7/widget/aa;)Z

    .line 2554
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2545
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    .line 576
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/ae;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/widget/ActivityChooserView;->a(Landroid/support/v7/widget/ActivityChooserView;)Landroid/support/v7/widget/ad;

    move-result-object v0

    .line 2829
    iget-boolean v0, v0, Landroid/support/v7/widget/ad;->b:Z

    .line 576
    if-eqz v0, :cond_3

    .line 577
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/ae;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/widget/ActivityChooserView;->a(Landroid/support/v7/widget/ActivityChooserView;)Landroid/support/v7/widget/ad;

    move-result-object v0

    .line 3815
    iget-object v0, v0, Landroid/support/v7/widget/ad;->a:Landroid/support/v7/widget/x;

    .line 577
    invoke-virtual {v0, p3}, Landroid/support/v7/widget/x;->b(I)Landroid/content/Intent;

    move-result-object v0

    .line 578
    if-eqz v0, :cond_0

    .line 579
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 580
    iget-object v1, p0, Landroid/support/v7/widget/ae;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 576
    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 562
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 612
    iget-object v0, p0, Landroid/support/v7/widget/ae;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/widget/ActivityChooserView;->c(Landroid/support/v7/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 613
    iget-object v0, p0, Landroid/support/v7/widget/ae;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/widget/ActivityChooserView;->a(Landroid/support/v7/widget/ActivityChooserView;)Landroid/support/v7/widget/ad;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ad;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 614
    iget-object v0, p0, Landroid/support/v7/widget/ae;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v0, v2}, Landroid/support/v7/widget/ActivityChooserView;->a(Landroid/support/v7/widget/ActivityChooserView;Z)Z

    .line 615
    iget-object v0, p0, Landroid/support/v7/widget/ae;->a:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v1, p0, Landroid/support/v7/widget/ae;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v1}, Landroid/support/v7/widget/ActivityChooserView;->e(Landroid/support/v7/widget/ActivityChooserView;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/ActivityChooserView;->a(Landroid/support/v7/widget/ActivityChooserView;I)V

    .line 620
    :cond_0
    return v2

    .line 618
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
