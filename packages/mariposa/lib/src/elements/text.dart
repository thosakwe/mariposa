import 'package:html_builder/src/node.dart';
import 'package:meta/meta.dart';
import 'package:universal_html/html.dart'
    show Element, Event, HeadingElement, TitleElement;
import 'html_element.dart';

class Text extends Html5Component {
  Text._(String tagName, String text,
      {String key,
      String id,
      className,
      Style style,
      void Function(Element) onMount,
      Ref<Element> ref,
      Map<String, dynamic> props,
      Map<String, void Function(Event)> eventListeners})
      : super.bare(key, tagName, id, className, style, onMount, ref, props,
            eventListeners, [TextNode(text)]);

  factory Text(String text,
      {String key,
      String id,
      className,
      Style style,
      Map<String, dynamic> props,
      Map<String, void Function(Event)> eventListeners}) {
    return Text._('span', text,
        key: key,
        id: id,
        className: className,
        style: style,
        props: props,
        eventListeners: eventListeners);
  }

  factory Text.bold(String text,
      {String key,
      String id,
      className,
      Style style,
      Map<String, dynamic> props,
      Map<String, void Function(Event)> eventListeners}) {
    return Text._('b', text,
        id: id,
        key: key,
        className: className,
        style: style,
        props: props,
        eventListeners: eventListeners);
  }

  factory Text.emphasized(String text,
      {String key,
      String id,
      className,
      Style style,
      Map<String, dynamic> props,
      Map<String, void Function(Event)> eventListeners}) {
    return Text._('i', text,
        id: id,
        key: key,
        className: className,
        style: style,
        props: props,
        eventListeners: eventListeners);
  }

  factory Text.italicized(String text,
      {String key,
      String id,
      className,
      Style style,
      Map<String, dynamic> props,
      Map<String, void Function(Event)> eventListeners}) {
    return Text._('i', text,
        id: id,
        key: key,
        className: className,
        style: style,
        props: props,
        eventListeners: eventListeners);
  }

  factory Text.strong(String text,
      {String key,
      String id,
      className,
      Style style,
      Map<String, dynamic> props,
      Map<String, void Function(Event)> eventListeners}) {
    return Text._('strong', text,
        id: id,
        key: key,
        className: className,
        style: style,
        props: props,
        eventListeners: eventListeners);
  }
  factory Text.underlined(String text,
      {String key,
      String id,
      className,
      Style style,
      Map<String, dynamic> props,
      Map<String, void Function(Event)> eventListeners}) {
    return Text._('u', text,
        id: id,
        key: key,
        className: className,
        style: style,
        props: props,
        eventListeners: eventListeners);
  }
}

class Heading extends Html5Component<HeadingElement> {
  Heading._(
      String key,
      String tagName,
      String id,
      className,
      Style style,
      void Function(HeadingElement) onMount,
      Ref<HeadingElement> ref,
      Map<String, dynamic> props,
      Map<String, void Function(Event)> eventListeners,
      Node child)
      : super.bare(key, tagName, id, className, style, onMount, ref, props,
            eventListeners, [child]);

  factory Heading.h1(
      {@required Node child,
      String key,
      String id,
      className,
      Style style,
      void Function(HeadingElement) onMount,
      Ref<HeadingElement> ref,
      Map<String, dynamic> props,
      Map<String, void Function(Event)> eventListeners}) {
    return Heading._(key, 'h1', id, className, style, onMount, ref, props,
        eventListeners, child);
  }

  factory Heading.h2(
      {@required Node child,
      String key,
      String id,
      className,
      Style style,
      void Function(HeadingElement) onMount,
      Ref<HeadingElement> ref,
      Map<String, dynamic> props,
      Map<String, void Function(Event)> eventListeners}) {
    return Heading._(key, 'h2', id, className, style, onMount, ref, props,
        eventListeners, child);
  }

  factory Heading.h3(
      {@required Node child,
      String key,
      String id,
      className,
      Style style,
      void Function(HeadingElement) onMount,
      Ref<HeadingElement> ref,
      Map<String, dynamic> props,
      Map<String, void Function(Event)> eventListeners}) {
    return Heading._(key, 'h3', id, className, style, onMount, ref, props,
        eventListeners, child);
  }

  factory Heading.h4(
      {@required Node child,
      String key,
      String id,
      className,
      Style style,
      void Function(HeadingElement) onMount,
      Ref<HeadingElement> ref,
      Map<String, dynamic> props,
      Map<String, void Function(Event)> eventListeners}) {
    return Heading._(key, 'h4', id, className, style, onMount, ref, props,
        eventListeners, child);
  }

  factory Heading.h5(
      {@required Node child,
      String key,
      String id,
      className,
      Style style,
      void Function(HeadingElement) onMount,
      Ref<HeadingElement> ref,
      Map<String, dynamic> props,
      Map<String, void Function(Event)> eventListeners}) {
    return Heading._(key, 'h5', id, className, style, onMount, ref, props,
        eventListeners, child);
  }

  factory Heading.h6(
      {@required Node child,
      String key,
      String id,
      className,
      Style style,
      void Function(HeadingElement) onMount,
      Ref<HeadingElement> ref,
      Map<String, dynamic> props,
      Map<String, void Function(Event)> eventListeners}) {
    return Heading._(key, 'h6', id, className, style, onMount, ref, props,
        eventListeners, child);
  }
}

class Title extends Html5Component<TitleElement> {
  Title(
      {String key,
      String id,
      className,
      Style style,
      void Function(TitleElement) onMount,
      Ref<TitleElement> ref,
      Map<String, dynamic> props,
      Map<String, void Function(Event)> eventListeners,
      @required Node child})
      : super.bare(key, 'title', id, className, style, onMount, ref, props,
            eventListeners, [child]);
}
