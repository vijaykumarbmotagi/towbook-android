.class Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;
.super Landroid/support/v7/preference/Preference;
.source "CollapsiblePreferenceGroupController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/CollapsiblePreferenceGroupController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExpandButton"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;)V"
        }
    .end annotation

    .line 144
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 145
    invoke-direct {p0}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;->initLayout()V

    .line 146
    invoke-direct {p0, p2, p3}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;->setSummary(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private initLayout()V
    .registers 2

    .line 150
    sget v0, Landroid/support/v7/preference/R$layout;->expand_button:I

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;->setLayoutResource(I)V

    .line 151
    sget v0, Landroid/support/v7/preference/R$drawable;->ic_arrow_down_24dp:I

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;->setIcon(I)V

    .line 152
    sget v0, Landroid/support/v7/preference/R$string;->expand_button_title:I

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;->setTitle(I)V

    const/16 v0, 0x3e7

    .line 154
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;->setOrder(I)V

    return-void
.end method

.method private setSummary(Ljava/util/List;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;)V"
        }
    .end annotation

    .line 164
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/Preference;

    .line 165
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, v1

    const/4 v0, 0x0

    .line 167
    :goto_12
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_4c

    .line 168
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/Preference;

    .line 169
    instance-of v3, v2, Landroid/support/v7/preference/PreferenceGroup;

    if-nez v3, :cond_49

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->isVisible()Z

    move-result v3

    if-nez v3, :cond_29

    goto :goto_49

    .line 172
    :cond_29
    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 173
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_49

    if-nez v0, :cond_37

    move-object v0, v2

    goto :goto_49

    .line 177
    :cond_37
    invoke-virtual {p0}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Landroid/support/v7/preference/R$string;->summary_collapsed_preference_list:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    aput-object v2, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_49
    :goto_49
    add-int/lit8 p1, p1, 0x1

    goto :goto_12

    .line 182
    :cond_4c
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 3

    .line 187
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const/4 v0, 0x0

    .line 188
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    return-void
.end method
