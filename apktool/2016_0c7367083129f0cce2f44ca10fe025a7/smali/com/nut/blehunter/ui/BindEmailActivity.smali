.class public Lcom/nut/blehunter/ui/BindEmailActivity;
.super Lcom/nut/blehunter/ui/b;
.source "BindEmailActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    return-void
.end method

.method private c()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 144
    const v0, 0x7f0d019d

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nut/blehunter/ui/BindEmailActivity;->b:Landroid/widget/EditText;

    .line 145
    const v0, 0x7f0d01c5

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nut/blehunter/ui/BindEmailActivity;->c:Landroid/widget/EditText;

    .line 146
    const v0, 0x7f0d01c6

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nut/blehunter/ui/BindEmailActivity;->d:Landroid/widget/EditText;

    .line 148
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindEmailActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 149
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindEmailActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 150
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindEmailActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 152
    const v0, 0x7f0d01c9

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 153
    const v1, 0x7f0d01c8

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/BindEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 154
    const v2, 0x7f0d01c7

    invoke-virtual {p0, v2}, Lcom/nut/blehunter/ui/BindEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 155
    const v3, 0x7f0d01c4

    invoke-virtual {p0, v3}, Lcom/nut/blehunter/ui/BindEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 157
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget v4, p0, Lcom/nut/blehunter/ui/BindEmailActivity;->a:I

    packed-switch v4, :pswitch_data_0

    .line 187
    :goto_0
    return-void

    .line 161
    :pswitch_0
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 163
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 168
    :pswitch_1
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 169
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 170
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 175
    :pswitch_2
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 176
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 177
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 179
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/nut/blehunter/entity/User;->c:Lcom/nut/blehunter/entity/Email;

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/nut/blehunter/ui/BindEmailActivity;->b:Landroid/widget/EditText;

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->c:Lcom/nut/blehunter/entity/Email;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Email;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindEmailActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 218
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 219
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->b()Lcom/nut/blehunter/rxApi/service/AccountService;

    move-result-object v0

    const-string v1, "email"

    invoke-static {v1, p1}, Lcom/nut/blehunter/rxApi/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nut/blehunter/rxApi/service/AccountService;->bindEmail(Ljava/util/HashMap;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/q;

    invoke-direct {v1, p0, p1}, Lcom/nut/blehunter/ui/q;-><init>(Lcom/nut/blehunter/ui/BindEmailActivity;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 243
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/BindEmailActivity;->invalidateOptionsMenu()V

    .line 215
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 201
    :goto_0
    return-void

    .line 193
    :pswitch_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindEmailActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-static {v0}, Lcom/nut/blehunter/d/i;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    const v0, 0x7f0601e7

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 198
    :cond_0
    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/BindEmailActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d01c9
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindEmailActivity;->setContentView(I)V

    .line 54
    const v0, 0x7f0601d9

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindEmailActivity;->a(I)V

    .line 55
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/BindEmailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 56
    const-string v1, "bind_type"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/ui/BindEmailActivity;->a:I

    .line 57
    iget v0, p0, Lcom/nut/blehunter/ui/BindEmailActivity;->a:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 58
    const v0, 0x7f0601de

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindEmailActivity;->a(I)V

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/nut/blehunter/ui/BindEmailActivity;->c()V

    .line 61
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    .prologue
    const v1, 0x7f0e0011

    const v0, 0x7f0d0254

    const/4 v3, 0x1

    .line 65
    const/4 v2, 0x0

    .line 68
    iget v4, p0, Lcom/nut/blehunter/ui/BindEmailActivity;->a:I

    packed-switch v4, :pswitch_data_0

    .line 100
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/BindEmailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    invoke-virtual {v4, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 101
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 102
    return v3

    .line 72
    :pswitch_0
    iget-object v4, p0, Lcom/nut/blehunter/ui/BindEmailActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v5

    .line 74
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/nut/blehunter/entity/User;->j()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 76
    iget-object v5, v5, Lcom/nut/blehunter/entity/User;->c:Lcom/nut/blehunter/entity/Email;

    iget-object v5, v5, Lcom/nut/blehunter/entity/Email;->a:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 77
    goto :goto_0

    .line 79
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 80
    goto :goto_0

    .line 87
    :pswitch_1
    iget-object v4, p0, Lcom/nut/blehunter/ui/BindEmailActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 88
    iget-object v5, p0, Lcom/nut/blehunter/ui/BindEmailActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 89
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 90
    goto :goto_0

    .line 95
    :pswitch_2
    const v1, 0x7f0e0008

    .line 96
    const v0, 0x7f0d024c

    move v2, v3

    .line 97
    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const v5, 0x7f0601e7

    const/16 v2, 0x64

    const/4 v0, 0x0

    .line 107
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 140
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 109
    :sswitch_0
    iget v1, p0, Lcom/nut/blehunter/ui/BindEmailActivity;->a:I

    if-ne v1, v2, :cond_2

    .line 110
    iget-object v1, p0, Lcom/nut/blehunter/ui/BindEmailActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-static {v1}, Lcom/nut/blehunter/d/i;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 112
    invoke-static {p0, v5}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;I)V

    goto :goto_1

    .line 115
    :cond_1
    invoke-direct {p0, v1}, Lcom/nut/blehunter/ui/BindEmailActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_2
    iget v1, p0, Lcom/nut/blehunter/ui/BindEmailActivity;->a:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    .line 117
    iget-object v1, p0, Lcom/nut/blehunter/ui/BindEmailActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 118
    iget-object v2, p0, Lcom/nut/blehunter/ui/BindEmailActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v3

    .line 121
    if-eqz v3, :cond_3

    iget-object v4, v3, Lcom/nut/blehunter/entity/User;->c:Lcom/nut/blehunter/entity/Email;

    if-eqz v4, :cond_3

    iget-object v3, v3, Lcom/nut/blehunter/entity/User;->c:Lcom/nut/blehunter/entity/Email;

    iget-object v3, v3, Lcom/nut/blehunter/entity/Email;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 122
    const v1, 0x7f0601e9

    invoke-static {p0, v1}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;I)V

    goto :goto_1

    .line 125
    :cond_3
    invoke-static {v2}, Lcom/nut/blehunter/d/i;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 126
    invoke-static {p0, v5}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;I)V

    goto :goto_1

    .line 129
    :cond_4
    invoke-direct {p0, v2}, Lcom/nut/blehunter/ui/BindEmailActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :sswitch_1
    iput v2, p0, Lcom/nut/blehunter/ui/BindEmailActivity;->a:I

    .line 134
    invoke-direct {p0}, Lcom/nut/blehunter/ui/BindEmailActivity;->c()V

    .line 135
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindEmailActivity;->b:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 136
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindEmailActivity;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/nut/blehunter/ui/BindEmailActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 137
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/BindEmailActivity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    .line 107
    :sswitch_data_0
    .sparse-switch
        0x7f0d024c -> :sswitch_1
        0x7f0d0254 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 209
    return-void
.end method
