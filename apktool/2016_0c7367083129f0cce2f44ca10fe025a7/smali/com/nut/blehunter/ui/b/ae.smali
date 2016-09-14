.class final Lcom/nut/blehunter/ui/b/ae;
.super Ljava/lang/Object;
.source "NutListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/b/ac;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/b/ac;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/ae;->a:Lcom/nut/blehunter/ui/b/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ae;->a:Lcom/nut/blehunter/ui/b/ac;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/ac;->c(Lcom/nut/blehunter/ui/b/ac;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d01b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 149
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/ae;->a:Lcom/nut/blehunter/ui/b/ac;

    const v2, 0x7f06011c

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/ui/b/ac;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 153
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/ae;->a:Lcom/nut/blehunter/ui/b/ac;

    invoke-virtual {v1}, Lcom/nut/blehunter/ui/b/ac;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/nut/blehunter/ui/BindEmailActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 154
    const-string v1, "bind_type"

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/ae;->a:Lcom/nut/blehunter/ui/b/ac;

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ui/b/ac;->startActivity(Landroid/content/Intent;)V

    .line 158
    :cond_0
    return-void
.end method
