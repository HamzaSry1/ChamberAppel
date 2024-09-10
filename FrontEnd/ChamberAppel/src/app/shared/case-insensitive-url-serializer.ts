import { DefaultUrlSerializer, UrlSerializer, UrlTree } from '@angular/router';

export class CaseInsensitiveUrlSerializer implements UrlSerializer {
  private defaultUrlSerializer: DefaultUrlSerializer = new DefaultUrlSerializer();

  parse(url: string): UrlTree {
    // Convert the URL to lowercase before parsing
    const lowercaseUrl = url.toLowerCase();
    return this.defaultUrlSerializer.parse(lowercaseUrl);
  }

  serialize(tree: UrlTree): string {
    // Use the default serializer for serialization
    const serializedUrl = this.defaultUrlSerializer.serialize(tree);
    // Convert the serialized URL fragments to lowercase
    return serializedUrl.toLowerCase();
  }
}
