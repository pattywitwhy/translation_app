(function(e){function t(t){for(var a,o,i=t[0],u=t[1],l=t[2],m=0,d=[];m<i.length;m++)o=i[m],n[o]&&d.push(n[o][0]),n[o]=0;for(a in u)Object.prototype.hasOwnProperty.call(u,a)&&(e[a]=u[a]);c&&c(t);while(d.length)d.shift()();return r.push.apply(r,l||[]),s()}function s(){for(var e,t=0;t<r.length;t++){for(var s=r[t],a=!0,i=1;i<s.length;i++){var u=s[i];0!==n[u]&&(a=!1)}a&&(r.splice(t--,1),e=o(o.s=s[0]))}return e}var a={},n={app:0},r=[];function o(t){if(a[t])return a[t].exports;var s=a[t]={i:t,l:!1,exports:{}};return e[t].call(s.exports,s,s.exports,o),s.l=!0,s.exports}o.m=e,o.c=a,o.d=function(e,t,s){o.o(e,t)||Object.defineProperty(e,t,{enumerable:!0,get:s})},o.r=function(e){"undefined"!==typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},o.t=function(e,t){if(1&t&&(e=o(e)),8&t)return e;if(4&t&&"object"===typeof e&&e&&e.__esModule)return e;var s=Object.create(null);if(o.r(s),Object.defineProperty(s,"default",{enumerable:!0,value:e}),2&t&&"string"!=typeof e)for(var a in e)o.d(s,a,function(t){return e[t]}.bind(null,a));return s},o.n=function(e){var t=e&&e.__esModule?function(){return e["default"]}:function(){return e};return o.d(t,"a",t),t},o.o=function(e,t){return Object.prototype.hasOwnProperty.call(e,t)},o.p="/";var i=window["webpackJsonp"]=window["webpackJsonp"]||[],u=i.push.bind(i);i.push=t,i=i.slice();for(var l=0;l<i.length;l++)t(i[l]);var c=u;r.push([0,"chunk-vendors"]),s()})({0:function(e,t,s){e.exports=s("56d7")},"034f":function(e,t,s){"use strict";var a=s("64a9"),n=s.n(a);n.a},"56d7":function(e,t,s){"use strict";s.r(t);var a=s("2b0e"),n=function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("div",{attrs:{id:"app"}},[s("router-view")],1)},r=[],o=(s("034f"),s("2877")),i={},u=Object(o["a"])(i,n,r,!1,null,null,null),l=u.exports,c=s("8c4f"),m=function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("div",{staticClass:"home"},[s("ul",e._l(e.errors,function(t){return s("li",[e._v(e._s(t))])}),0),s("div",[s("img",{attrs:{id:"profile-image",src:e.user.image}})]),s("div",{staticClass:"container"},[s("form",{on:{submit:function(t){return t.preventDefault(),e.submit()}}},[s("div",{staticClass:"form-group"},[s("label",[e._v("Name")]),s("input",{directives:[{name:"model",rawName:"v-model",value:e.user.name,expression:"user.name"}],staticClass:"form-control",attrs:{type:"text"},domProps:{value:e.user.name},on:{input:function(t){t.target.composing||e.$set(e.user,"name",t.target.value)}}})]),s("div",{staticClass:"form-group"},[s("label",[e._v("Email")]),s("input",{directives:[{name:"model",rawName:"v-model",value:e.user.email,expression:"user.email"}],staticClass:"form-control",attrs:{type:"email"},domProps:{value:e.user.email},on:{input:function(t){t.target.composing||e.$set(e.user,"email",t.target.value)}}})]),s("div",{staticClass:"form-group"},[s("label",[e._v("Preferred Language")]),s("input",{directives:[{name:"model",rawName:"v-model",value:e.user.preferred_language,expression:"user.preferred_language"}],staticClass:"form-control",attrs:{type:"preferred_language"},domProps:{value:e.user.preferred_language},on:{input:function(t){t.target.composing||e.$set(e.user,"preferred_language",t.target.value)}}})]),s("div",{staticClass:"form-group"},[s("label",[e._v("Phone Number")]),s("input",{directives:[{name:"model",rawName:"v-model",value:e.user.phone_number,expression:"user.phone_number"}],staticClass:"form-control",attrs:{type:"phone_number"},domProps:{value:e.user.phone_number},on:{input:function(t){t.target.composing||e.$set(e.user,"phone_number",t.target.value)}}})]),s("input",{staticClass:"btn btn-primary",attrs:{type:"submit",value:"Save"}})])]),s("button",{staticClass:"btn",on:{click:function(t){return e.chatroom()}}},[e._v("Chatrooms")])])},d=[],p=(s("7f7f"),s("bc3a")),v={data:function(){return{user:{id:"",name:"",email:"",preferred_language:"",phone_number:""},errors:[]}},created:function(){var e=this,t=localStorage.getItem("userId");p.get("/api/users/"+t).then(function(t){console.log(t.data),e.user=t.data})},methods:{submit:function(){var e=this,t={id:this.user.id,name:this.user.name,email:this.user.email,preferred_language:this.user.preferred_language,phone_number:this.user.phone_number};p.patch("/api/users/"+this.user.id,t).then(function(t){e.user=t.data,e.$router.push("/home")}).catch(function(t){console.log(t.response.data.errors),e.user.push(response.data),e.$router.push("/home")})},chatroom:function(){var e=this;p.get("/api/conversations/").then(function(t){e.$router.push("/conversations")})}}},f=v,g=(s("cccb"),Object(o["a"])(f,m,d,!1,null,null,null)),h=g.exports,b=function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("div",{staticClass:"login"},[s("div",{staticClass:"container"},[s("form",{on:{submit:function(t){return t.preventDefault(),e.submit()}}},[s("h1",[e._v("Login")]),s("ul",e._l(e.errors,function(t){return s("ul",{staticClass:"text-danger"},[e._v(e._s(t))])}),0),s("div",{staticClass:"form-group"},[s("label",[e._v("Email:")]),s("input",{directives:[{name:"model",rawName:"v-model",value:e.email,expression:"email"}],staticClass:"form-control",attrs:{type:"email"},domProps:{value:e.email},on:{input:function(t){t.target.composing||(e.email=t.target.value)}}})]),s("div",{staticClass:"form-group"},[s("label",[e._v("Password:")]),s("input",{directives:[{name:"model",rawName:"v-model",value:e.password,expression:"password"}],staticClass:"form-control",attrs:{type:"password"},domProps:{value:e.password},on:{input:function(t){t.target.composing||(e.password=t.target.value)}}})]),s("input",{staticClass:"btn btn-primary",attrs:{type:"submit",value:"Submit"}})])])])},_=[],C=s("bc3a"),w=s.n(C),y={data:function(){return{email:"",password:"",errors:[]}},methods:{submit:function(){var e=this,t={email:this.email,password:this.password};w.a.post("/api/sessions",t).then(function(t){w.a.defaults.headers.common["Authorization"]="Bearer "+t.data.jwt,localStorage.setItem("jwt",t.data.jwt),localStorage.setItem("userId",t.data.user_id),e.$router.push("/home")}).catch(function(t){e.errors=["Invalid email or password"],e.email="",e.password="",e.errors=t.response.data.errors,console.log(t.response.data.errors)})}}},x=y,$=(s("d6db"),Object(o["a"])(x,b,_,!1,null,null,null)),N=$.exports,P=function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("div",{staticClass:"logout"})},S=[],I={created:function(){delete w.a.defaults.headers.common["Authorization"],localStorage.removeItem("jwt"),this.$router.push("/login")}},T=I,j=Object(o["a"])(T,P,S,!1,null,null,null),E=j.exports,O=function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("div",{staticClass:"signup"},[s("div",{staticClass:"container"},[s("form",{on:{submit:function(t){return t.preventDefault(),e.submit()}}},[s("h1",[e._v("Signup")]),s("ul",e._l(e.errors,function(t){return s("li",{staticClass:"text-danger"},[e._v(e._s(t))])}),0),s("div",{staticClass:"form-group"},[s("label",[e._v("Name:")]),s("input",{directives:[{name:"model",rawName:"v-model",value:e.name,expression:"name"}],staticClass:"form-control",attrs:{type:"text"},domProps:{value:e.name},on:{input:function(t){t.target.composing||(e.name=t.target.value)}}})]),s("div",{staticClass:"form-group"},[s("label",[e._v("Email:")]),s("input",{directives:[{name:"model",rawName:"v-model",value:e.email,expression:"email"}],staticClass:"form-control",attrs:{type:"email"},domProps:{value:e.email},on:{input:function(t){t.target.composing||(e.email=t.target.value)}}})]),s("div",{staticClass:"form-group"},[s("label",[e._v("Password:")]),s("input",{directives:[{name:"model",rawName:"v-model",value:e.password,expression:"password"}],staticClass:"form-control",attrs:{type:"password"},domProps:{value:e.password},on:{input:function(t){t.target.composing||(e.password=t.target.value)}}})]),s("div",{staticClass:"form-group"},[s("label",[e._v("Password confirmation:")]),s("input",{directives:[{name:"model",rawName:"v-model",value:e.passwordConfirmation,expression:"passwordConfirmation"}],staticClass:"form-control",attrs:{type:"password"},domProps:{value:e.passwordConfirmation},on:{input:function(t){t.target.composing||(e.passwordConfirmation=t.target.value)}}})]),s("input",{staticClass:"btn btn-primary",attrs:{type:"submit",value:"Submit"}})])])])},M=[],k={data:function(){return{name:"",email:"",password:"",passwordConfirmation:"",errors:[]}},methods:{submit:function(){var e=this,t={name:this.name,email:this.email,password:this.password,password_confirmation:this.passwordConfirmation};w.a.post("/api/users",t).then(function(t){e.$router.push("/home")}).catch(function(t){e.errors=t.response.data.errors})}}},A=k,D=Object(o["a"])(A,O,M,!1,null,null,null),L=D.exports,U=function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("div",{staticClass:"conversations-show"},[s("h1",{attrs:{id:"conversation-name"}},[e._v(e._s(e.conversation.name))]),s("div",{staticClass:"row"},e._l(e.conversation.users,function(e){return s("div",{staticClass:"col-sm card-deck"},[s("img",{attrs:{id:"members-pic",src:e.image}})])}),0),s("form",{on:{click:function(t){return e.goBack()}}},[e._m(0)]),s("form",{on:{click:function(t){return e.destroyMessage()}}},[e._m(1)]),s("ul",e._l(e.errors,function(t){return s("div",[e._v(e._s(t))])}),0),s("form",{on:{submit:function(t){return t.preventDefault(),e.sendMessage()}}},[s("div",[s("input",{directives:[{name:"model",rawName:"v-model",value:e.textToTranslate,expression:"textToTranslate"}],attrs:{placeholder:"Type your message here"},domProps:{value:e.textToTranslate},on:{input:function(t){t.target.composing||(e.textToTranslate=t.target.value)}}})]),e._m(2)]),s("ul",{staticClass:"scroll-bar"},e._l(e.conversation.messages,function(t){return s("div",{staticClass:"styled-message",class:{myMessage:e.userId==t.user.id,theirMessage:e.userId!=t.user.id}},[e._v(" "+e._s(t.body)+" "),s("img",{attrs:{src:t.user.image}})])}),0)])},B=[function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("div",{staticClass:"new-button"},[s("input",{staticClass:"btn",attrs:{type:"button",value:"GO BACK TO CHATS"}})])},function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("div",{staticClass:"new-button"},[s("input",{staticClass:"btn",attrs:{type:"button",value:"DELETE ALL MESSAGES"}})])},function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("div",{staticClass:"new-button"},[s("input",{staticClass:"btn",attrs:{type:"submit",value:"SEND"}})])}],z=(s("a481"),s("bc3a")),G={data:function(){return{textToTranslate:"",language:"",users:[],conversation_id:"",conversation:{id:"",name:"",messages:[{id:"",body:"",user:{id:"",image:""}}]},errors:[],userId:""}},created:function(){var e=this;this.userId=localStorage.getItem("userId"),z.get("/api/conversations/"+this.$route.params.id).then(function(t){e.conversation=t.data,z.get("/api/users"+e.$route.params.id),console.log(e.conversation)})},methods:{sendMessage:function(){var e=this;console.log("Create a Message....");var t=this.textToTranslate.replace(/ /g,"%20"),s={conversation_id:this.$route.params.id,body:t};z.post("/api/messages",s).then(function(t){e.conversation.messages.push(t.data),e.textToTranslate="",console.log(t.data.body)}).catch(function(t){e.errors=t.response.data.errors,console.log(response.data.errors)})},destroyMessage:function(){var e=this;z.delete("/api/conversations/"+this.$route.params.id).then(function(t){console.log("Success",t.data),e.$router.push("/conversations")})},goBack:function(){var e=this;z.get("/api/conversations/").then(function(t){console.log("Success",t.data),e.$router.push("/conversations"),console.log(t.data)})}}},J=G,H=(s("978c"),Object(o["a"])(J,U,B,!1,null,null,null)),K=H.exports,R=function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("div",{staticClass:"conversations-index"},[s("h1",[e._v("Chatrooms")]),s("div",[s("form",{on:{submit:function(t){return t.preventDefault(),e.submit()}}},[s("div",{staticClass:"contacts"},[e._v("\n        Contacts: "),s("select",{directives:[{name:"model",rawName:"v-model",value:e.selectedUserId,expression:"selectedUserId"}],attrs:{list:"contacts"},on:{change:function(t){var s=Array.prototype.filter.call(t.target.options,function(e){return e.selected}).map(function(e){var t="_value"in e?e._value:e.value;return t});e.selectedUserId=t.target.multiple?s:s[0]}}},e._l(e.users,function(t){return s("option",{domProps:{value:t.id}},[e._v(e._s(t.name))])}),0)]),s("br"),s("input",{directives:[{name:"model",rawName:"v-model",value:e.newConversationName,expression:"newConversationName"}],attrs:{placeholder:"Conversation Name"},domProps:{value:e.newConversationName},on:{input:function(t){t.target.composing||(e.newConversationName=t.target.value)}}}),s("input",{staticClass:"btn btn-secondary",attrs:{type:"submit",value:"Create"}})]),s("div",[e._l(e.startedConversations,function(t){return s("div",[s("router-link",{staticClass:"my-conversations started-conversation",attrs:{to:"/conversations/"+t.id}},[e._v("\n          "+e._s(t.name)+" \n        ")])],1)}),e._l(e.invitedConversations,function(t){return s("div",[s("router-link",{staticClass:"my-conversations invited-conversation",attrs:{to:"/conversations/"+t.id}},[e._v("\n            "+e._s(t.name)+" \n          ")])],1)})],2)])])},q=[],F=s("bc3a"),Q={data:function(){return{users:[],startedConversations:[],invitedConversations:[],selectedUserId:"",newConversationName:""}},created:function(){var e=this;F.get("/api/conversations").then(function(t){console.log(t.data),e.startedConversations=t.data["started_conversations"],e.invitedConversations=t.data["invited_conversations"],F.get("/api/users").then(function(t){e.users=t.data})})},methods:{submit:function(){var e=this;console.log("Make an invitation");var t={name:this.newConversationName,user_id:this.selectedUserId};F.post("api/conversations",t).then(function(t){e.$router.push("/conversations/"+t.data.id)})},storeID:function(e){localStorage.setItem("inviteId",e),console.log(e)}}},V=Q,W=(s("cbc8"),Object(o["a"])(V,R,q,!1,null,null,null)),X=W.exports;a["a"].use(c["a"]);var Y=new c["a"]({mode:"history",base:"/",routes:[{path:"/home",name:"home",component:h},{path:"/login",name:"login",component:N},{path:"/logout",name:"logout",component:E},{path:"/signup",name:"signup",component:L},{path:"/conversations",name:"conversations-index",component:X},{path:"/conversations/:id",name:"conversations-show",component:K}]});w.a.defaults.baseURL="/";var Z=localStorage.getItem("jwt");Z&&(w.a.defaults.headers.common["Authorization"]="Bearer "+Z),a["a"].config.productionTip=!1,new a["a"]({router:Y,render:function(e){return e(l)}}).$mount("#app")},"64a9":function(e,t,s){},7669:function(e,t,s){},"828b":function(e,t,s){},"978c":function(e,t,s){"use strict";var a=s("7669"),n=s.n(a);n.a},a9e7:function(e,t,s){},cbc8:function(e,t,s){"use strict";var a=s("828b"),n=s.n(a);n.a},cccb:function(e,t,s){"use strict";var a=s("d563"),n=s.n(a);n.a},d563:function(e,t,s){},d6db:function(e,t,s){"use strict";var a=s("a9e7"),n=s.n(a);n.a}});
//# sourceMappingURL=app.739a203a.js.map